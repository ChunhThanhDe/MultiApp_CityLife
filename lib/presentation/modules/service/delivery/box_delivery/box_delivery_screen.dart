import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart'; // Add image_picker to pubspec!
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/service/delivery/components/delivery_box_label.dart';
import 'package:sixam_mart_user/presentation/modules/service/delivery/components/delivery_location_box.dart';
import 'package:sixam_mart_user/presentation/modules/service/delivery/components/delivery_select_box_row.dart';
import 'package:sixam_mart_user/presentation/modules/service/delivery/components/delivery_show_product_image_dialog.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';

import 'package:sixam_mart_user/presentation/modules/delivery/box_delivery/box_delivery_controller.dart';

class BoxDeliveryScreen extends BaseScreen<BoxDeliveryController> {
  const BoxDeliveryScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return BasicAppBar(title: 'Box Delivery', onBack: () => Get.back());
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Obx(() {
      // Step 1: Pick locations
      if (!controller.canShowDetailForm) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LabelWidget('Location details', isRequired: true),
              const SizedBox(height: 8),
              _locationField(
                context,
                icon: 'assets/icons/ic_box_package_hand_bottom.svg',
                text: controller.pickupLocation.value.isEmpty ? 'Pickup Location' : controller.pickupLocation.value,
                onTap: () => _showLocationBottomSheet(
                  context: context,
                  title: 'Pickup Location',
                  addresses: controller.savedAddresses,
                  selectedAddress: controller.pickupLocation.value,
                  onSelect: (val) => controller.setPickupLocation(val),
                ),
                isSelected: controller.pickupLocation.value.isNotEmpty,
              ),
              const SizedBox(height: 8),
              _locationField(
                context,
                icon: 'assets/icons/ic_box_package_courier_hands.svg',
                text: controller.dropoffLocation.value.isEmpty ? 'Dropoff Location' : controller.dropoffLocation.value,
                onTap: controller.pickupLocation.value.isEmpty
                    ? null
                    : () => _showLocationBottomSheet(
                        context: context,
                        title: 'Dropoff Location',
                        addresses: controller.savedAddresses,
                        selectedAddress: controller.dropoffLocation.value,
                        onSelect: (val) => controller.setDropoffLocation(val),
                      ),
                isSelected: controller.dropoffLocation.value.isNotEmpty,
                isEnabled: controller.pickupLocation.value.isNotEmpty,
              ),
            ],
          ),
        );
      }

      // Step 2: Show details
      return Stack(
        children: [
          // Nội dung chính cuộn được
          Positioned.fill(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 120),
              children: [
                const LabelWidget('Location details', isRequired: true),
                const SizedBox(height: 8),
                LocationBoxWidget(controller: controller),
                const SizedBox(height: 24),
                const LabelWidget('Select Box', isBold: true, isLarge: true),
                const SizedBox(height: 8),
                const SelectBoxRowWidget(),
                const SizedBox(height: 24),
                _imagePickerLabel(controller),
                const SizedBox(height: 8),
                _imagePickerRow(context, controller),
                const SizedBox(height: 24),
                const LabelWidget('Instructions for captain', isBold: true, optional: true),
                const SizedBox(height: 8),
                _instructionBox(controller),
                const SizedBox(height: 16),
                _noteChips(controller),
                const SizedBox(height: 32),
              ],
            ),
          ),

          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SafeArea(
              top: false,
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed(AppRoutes.checkoutDelivery);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF5856D7),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                          elevation: 0,
                          padding: EdgeInsets.zero,
                        ),
                        child: const Text(
                          'Continue to Checkout',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    });
  }

  Widget _imagePickerLabel(BoxDeliveryController c) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Add Product image',
          style: TextStyle(fontSize: 16, color: Color(0xFF161A1D), fontWeight: FontWeight.w500),
        ),
        Text(
          '${c.productImages.length} (3)',
          style: const TextStyle(fontSize: 14, color: Color(0xFF161A1D), fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  Widget _locationField(BuildContext context, {required String icon, required String text, VoidCallback? onTap, bool isSelected = false, bool isEnabled = true}) {
    return GestureDetector(
      onTap: isEnabled ? onTap : null,
      child: Container(
        decoration: BoxDecoration(
          color: isEnabled ? Colors.white : const Color(0xFFF4F4F4),
          border: Border.all(color: isSelected ? const Color(0xFF5856D7) : const Color(0xFFE8EBEE), width: isSelected ? 1.5 : 1),
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8), bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        margin: const EdgeInsets.only(bottom: 0, top: 8),
        child: Row(
          children: [
            SvgPicture.asset(icon, width: 24, height: 24),
            const SizedBox(width: 8),
            Text(
              text,
              style: TextStyle(
                fontSize: 14,
                color: isSelected
                    ? const Color(0xFF161A1D)
                    : isEnabled
                    ? const Color(0xFF798A9A)
                    : const Color(0xFFB0B3B8),
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _imagePickerRow(BuildContext context, BoxDeliveryController c) {
    final images = c.productImages;
    return Row(
      children: [
        if (images.length < 3)
          GestureDetector(
            onTap: () async {
              final picker = ImagePicker();
              final img = await picker.pickImage(source: ImageSource.gallery);
              if (img != null) c.addImage(img);
            },
            child: Container(
              width: 96,
              height: 96,
              decoration: BoxDecoration(
                color: const Color(0xFFF7F8F9),
                border: Border.all(color: const Color(0xFFE8EBEE), width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.add, size: 36, color: Color(0xFF161A1D)),
            ),
          ),
        if (images.length < 3) const SizedBox(width: 8),
        ...List.generate(
          images.length,
          (i) => Stack(
            children: [
              GestureDetector(
                onTap: () {
                  showProductImageDialog(Get.context ?? context, images[i].path);
                },
                child: Container(
                  width: 96,
                  height: 96,
                  margin: const EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(image: FileImage(File(images[i].path)), fit: BoxFit.cover),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: GestureDetector(
                  onTap: () => c.removeImage(i),
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.white.withValues(alpha: 0.7),
                    child: const Icon(Icons.close, color: Colors.black, size: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _instructionBox(BoxDeliveryController c) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFF0F0F1)),
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: TextField(
        onChanged: c.setInstruction,
        minLines: 3,
        maxLines: 5,
        decoration: const InputDecoration(hintText: 'e.g. leave at reception, don’t ring bell', border: InputBorder.none),
      ),
    );
  }

  Widget _noteChips(BoxDeliveryController c) {
    final options = ['Ring the bell', 'No need to ring the bell', 'Leave the package'];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          options.length,
          (i) => Padding(
            padding: const EdgeInsets.only(right: 8),
            child: ChoiceChip(
              label: Text(options[i], style: const TextStyle(fontSize: 12, color: Color(0xFF4A5763))),
              selected: c.instruction.value == options[i],
              onSelected: (_) => c.setInstruction(options[i]),
              backgroundColor: Colors.white,
              selectedColor: const Color(0xFFF0F0F1),
              shape: const StadiumBorder(side: BorderSide(color: Color(0xFFE8EBEE))),
            ),
          ),
        ),
      ),
    );
  }

  void _showLocationBottomSheet({
    required BuildContext context,
    required String title,
    required List<Map<String, String>> addresses, // List địa chỉ + tên
    required String? selectedAddress,
    required void Function(String) onSelect,
  }) {
    final TextEditingController searchController = TextEditingController();
    final RxList<Map<String, String>> filteredAddresses = addresses.obs;

    Get.bottomSheet(
      Obx(
        () => SafeArea(
          child: Padding(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 36,
                    height: 4,
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(color: const Color(0xFFEBEBF5), borderRadius: BorderRadius.circular(2)),
                  ),
                  Text(title, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                  const SizedBox(height: 16),
                  // Search Field
                  TextField(
                    controller: searchController,
                    onChanged: (value) {
                      filteredAddresses.value = value.isEmpty
                          ? addresses
                          : addresses.where((a) => a['label']!.toLowerCase().contains(value.toLowerCase()) || a['address']!.toLowerCase().contains(value.toLowerCase())).toList();
                    },
                    decoration: InputDecoration(
                      hintText: 'Search for an address',
                      prefixIcon: const Icon(Icons.search, size: 20),
                      filled: true,
                      fillColor: const Color(0xFFF7F8F9),
                      contentPadding: const EdgeInsets.symmetric(vertical: 8),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100), borderSide: BorderSide.none),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Saved addresses
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Saved addresses', style: TextStyle(fontSize: 14, color: Color(0xFF798A9A))),
                  ),
                  ...filteredAddresses.map(
                    (a) => ListTile(
                      title: Text(a['label'] ?? ''),
                      subtitle: Text(a['address'] ?? ''),
                      trailing: selectedAddress == a['address'] ? const Icon(Icons.check, color: Color(0xFF5856D7)) : null,
                      onTap: () {
                        onSelect(a['address']!);
                        Get.back();
                      },
                    ),
                  ),
                  const SizedBox(height: 8),
                  OutlinedButton(
                    onPressed: () {}, // TODO: Handle add new address
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size.fromHeight(48),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    child: const Text('Add new address'),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ),
        ),
      ),
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
    );
  }
}
