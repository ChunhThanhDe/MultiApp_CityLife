import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart'; // Add image_picker to pubspec!
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/delivery/components/delivery_show_product_image_dialog.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/app_bar_basic.dart';

import 'box_delivery_controller.dart';

class BoxDeliveryScreen extends BaseScreen<BoxDeliveryController> {
  const BoxDeliveryScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return BasicAppBar(
      title: "Box Delivery",
      onBack: () => Get.back(),
    );
  }

  @override
  Widget buildScreen(BuildContext context) {
    final List<Map<String, String>> savedAddresses = [
      {
        'label': 'My Work',
        'address': '2150 N Waterman Ave, El Centro, CA 92243',
      },
      {
        'label': 'My Home',
        'address': '2216 N 10th St, Apt 0, El Centro, CA 92243',
      },
      {
        'label': 'Hospital',
        'address': '385 Main St, El Centro, CA 92243',
      },
    ];
    return Obx(() {
      // Step 1: Pick locations
      if (!controller.canShowDetailForm) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _label("Location details", isRequired: true),
              SizedBox(height: 8),
              _locationField(
                context,
                icon: 'assets/icons/ic_box_package_hand_bottom.svg',
                text: controller.pickupLocation.value.isEmpty ? "Pickup Location" : controller.pickupLocation.value,
                onTap: () => _showLocationBottomSheet(
                  context: context,
                  title: "Pickup Location",
                  addresses: savedAddresses,
                  selectedAddress: controller.pickupLocation.value,
                  onSelect: (val) => controller.setPickupLocation(val),
                ),
                isSelected: controller.pickupLocation.value.isNotEmpty,
              ),
              SizedBox(height: 8),
              _locationField(
                context,
                icon: 'assets/icons/ic_box_package_courier_hands.svg',
                text: controller.dropoffLocation.value.isEmpty ? "Dropoff Location" : controller.dropoffLocation.value,
                onTap: controller.pickupLocation.value.isEmpty
                    ? null
                    : () => _showLocationBottomSheet(
                          context: context,
                          title: "Dropoff Location",
                          addresses: savedAddresses,
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
              padding: EdgeInsets.fromLTRB(24, 24, 24, 120), // chừa chỗ cho nút
              children: [
                _label("Location details", isRequired: true),
                SizedBox(height: 8),
                _locationBox(controller),
                SizedBox(height: 24),
                _label("Select Box", isBold: true, isLarge: true),
                SizedBox(height: 8),
                _selectBoxRow(controller),
                SizedBox(height: 24),
                _imagePickerLabel(controller),
                SizedBox(height: 8),
                _imagePickerRow(context, controller),
                SizedBox(height: 24),
                _label("Instructions for captain", isBold: true, optional: true),
                SizedBox(height: 8),
                _instructionBox(controller),
                SizedBox(height: 16),
                _noteChips(controller),
                SizedBox(height: 32),
              ],
            ),
          ),

          // Nút cố định dưới cùng, luôn hiện
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SafeArea(
              top: false,
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(24, 16, 24, 8),
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
                          backgroundColor: Color(0xFF5856D7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                          ),
                          elevation: 0,
                          padding: EdgeInsets.zero,
                        ),
                        child: Text(
                          "Continue to Checkout",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Center(
                      child: Container(
                        width: 134,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Color(0xFF161A1D),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    });
  }

  Widget _label(
    String text, {
    bool isRequired = false,
    bool optional = false,
    bool isBold = false,
    bool isLarge = false,
  }) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: isLarge ? 16 : 14,
            color: Color(0xFF161A1D),
            fontWeight: isBold ? FontWeight.w500 : FontWeight.w400,
          ),
        ),
        if (isRequired) Text("*", style: TextStyle(color: Color(0xFFFF3B30), fontSize: isLarge ? 18 : 14)),
        if (optional)
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Text(
              "(optional)",
              style: TextStyle(
                fontSize: isLarge ? 16 : 14,
                color: Color(0xFF4A4C4F),
                fontWeight: FontWeight.w400,
              ),
            ),
          )
      ],
    );
  }

  Widget _imagePickerLabel(BoxDeliveryController c) {
    // images.length = số ảnh đã pick, 3 là tối đa
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Add Product image",
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF161A1D),
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "${c.productImages.length} (3)", // Ví dụ: 2 (3)
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFF161A1D),
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget _locationField(
    BuildContext context, {
    required String icon,
    required String text,
    VoidCallback? onTap,
    bool isSelected = false,
    bool isEnabled = true,
  }) {
    return GestureDetector(
      onTap: isEnabled ? onTap : null,
      child: Container(
        decoration: BoxDecoration(
          color: isEnabled ? Colors.white : Color(0xFFF4F4F4),
          border: Border.all(
            color: isSelected ? Color(0xFF5856D7) : Color(0xFFE8EBEE),
            width: isSelected ? 1.5 : 1,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        margin: EdgeInsets.only(bottom: 0, top: 8),
        child: Row(
          children: [
            SvgPicture.asset(icon, width: 24, height: 24),
            SizedBox(width: 8),
            Text(
              text,
              style: TextStyle(
                fontSize: 14,
                color: isSelected
                    ? Color(0xFF161A1D)
                    : isEnabled
                        ? Color(0xFF798A9A)
                        : Color(0xFFB0B3B8),
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _locationBox(BoxDeliveryController c) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xFFE8EBEE)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          ListTile(
            leading: SvgPicture.asset('assets/icons/ic_box_package_hand_bottom.svg', width: 24, height: 24),
            title: Text(c.pickupLocation.value, style: TextStyle(fontSize: 14, color: Color(0xFF161A1D))),
          ),
          Divider(height: 1),
          ListTile(
            leading: SvgPicture.asset('assets/icons/ic_box_package_courier_hands.svg', width: 24, height: 24),
            title: Text(c.dropoffLocation.value, style: TextStyle(fontSize: 14, color: Color(0xFF161A1D))),
          ),
        ],
      ),
    );
  }

  Widget _selectBoxRow(BoxDeliveryController c) {
    final boxData = [
      {
        'label': 'Small Box',
        'desc': '20cm x 20cm\nUpto 10kg',
        'img': 'assets/images/img_box_delivery.png', // file-6efjet27uu88HpNKQ17HUN.png
      },
      {
        'label': 'Larg Box',
        'desc': '40cm x 40cm\nUpto 50kg',
        'img': 'assets/images/img_box_delivery.png', // file-Wk9wupNPmr6G5QTF5GVX4f.png
      },
    ];

    return SizedBox(
      height: 112, // đủ để chứa card & ảnh to (tham chiếu figma)
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: boxData.length,
        separatorBuilder: (context, i) => SizedBox(width: 16),
        itemBuilder: (context, i) {
          final isSelected = c.selectedBox.value == i;
          return GestureDetector(
            onTap: () => c.selectBox(i),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 180),
              width: 223,
              height: 104,
              decoration: BoxDecoration(
                color: isSelected ? Colors.white : Color(0xFFF7F8F9),
                border: Border.all(
                  color: isSelected ? Color(0xFF5856D7) : Colors.transparent,
                  width: 1.5,
                ),
                boxShadow: isSelected
                    ? [
                        BoxShadow(
                          color: Color(0x335856D7),
                          blurRadius: 4,
                        )
                      ]
                    : [],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  // Text info (title & desc)
                  Expanded(
                    flex: 7,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            boxData[i]['label']!,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xFF161A1D),
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            boxData[i]['desc']!,
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF4A5763),
                              height: 1.4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Image box
                  Expanded(
                    flex: 8,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset(
                        boxData[i]['img']!,
                        height: 72, // ảnh gần max chiều cao card nhưng ko vượt qua
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
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
                color: Color(0xFFF7F8F9),
                border: Border.all(
                  color: Color(0xFFE8EBEE),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.add, size: 36, color: Color(0xFF161A1D)),
            ),
          ),
        if (images.length < 3) SizedBox(width: 8),
        ...List.generate(
          images.length,
          (i) => Stack(
            children: [
              GestureDetector(
                onTap: () {
                  showProductImageDialog(
                    Get.context ?? context,
                    images[i].path,
                  );
                },
                child: Container(
                  width: 96,
                  height: 96,
                  margin: EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: FileImage(File(images[i].path)),
                      fit: BoxFit.cover,
                    ),
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
                    backgroundColor: Colors.white.withOpacity(0.7),
                    child: Icon(Icons.close, color: Colors.black, size: 16),
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
        border: Border.all(color: Color(0xFFF0F0F1)),
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: TextField(
        onChanged: c.setInstruction,
        minLines: 3,
        maxLines: 5,
        decoration: InputDecoration(
          hintText: "e.g. leave at reception, don’t ring bell",
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget _noteChips(BoxDeliveryController c) {
    final options = [
      "Ring the bell",
      "No need to ring the bell",
      "Leave the package",
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          options.length,
          (i) => Padding(
            padding: EdgeInsets.only(right: 8),
            child: ChoiceChip(
              label: Text(options[i], style: TextStyle(fontSize: 12, color: Color(0xFF4A5763))),
              selected: c.instruction.value == options[i],
              onSelected: (_) => c.setInstruction(options[i]),
              backgroundColor: Colors.white,
              selectedColor: Color(0xFFF0F0F1),
              shape: StadiumBorder(
                side: BorderSide(color: Color(0xFFE8EBEE)),
              ),
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
    TextEditingController searchController = TextEditingController();
    RxList<Map<String, String>> filteredAddresses = addresses.obs;

    Get.bottomSheet(
      Obx(() => SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 36,
                      height: 4,
                      margin: EdgeInsets.only(bottom: 16),
                      decoration: BoxDecoration(
                        color: Color(0xFFEBEBF5),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    SizedBox(height: 16),
                    // Search Field
                    TextField(
                      controller: searchController,
                      onChanged: (value) {
                        filteredAddresses.value = value.isEmpty
                            ? addresses
                            : addresses.where((a) => a['label']!.toLowerCase().contains(value.toLowerCase()) || a['address']!.toLowerCase().contains(value.toLowerCase())).toList();
                      },
                      decoration: InputDecoration(
                        hintText: "Search for an address",
                        prefixIcon: Icon(Icons.search, size: 20),
                        filled: true,
                        fillColor: Color(0xFFF7F8F9),
                        contentPadding: EdgeInsets.symmetric(vertical: 8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    // Saved addresses
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Saved addresses',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF798A9A),
                        ),
                      ),
                    ),
                    ...filteredAddresses.map((a) => ListTile(
                          title: Text(a['label'] ?? ''),
                          subtitle: Text(a['address'] ?? ''),
                          trailing: selectedAddress == a['address'] ? Icon(Icons.check, color: Color(0xFF5856D7)) : null,
                          onTap: () {
                            onSelect(a['address']!);
                            Get.back();
                          },
                        )),
                    SizedBox(height: 8),
                    OutlinedButton(
                      onPressed: () {}, // TODO: Handle add new address
                      style: OutlinedButton.styleFrom(
                        minimumSize: Size.fromHeight(48),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      child: Text("Add new address"),
                    ),
                    SizedBox(height: 12),
                  ],
                ),
              ),
            ),
          )),
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
    );
  }
}
