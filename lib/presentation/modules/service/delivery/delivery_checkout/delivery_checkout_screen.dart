import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/service/delivery/components/delivery_option.dart';
import 'package:sixam_mart_user/presentation/modules/service/delivery/delivery_checkout/delivery_checkout_controller.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';

class DeliveryCheckoutScreen extends BaseScreen<DeliveryCheckoutController> {
  const DeliveryCheckoutScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return BasicAppBar(title: 'Box Delivery', onBack: () => Get.back());
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Stack(
      children: [
        ListView(padding: EdgeInsets.zero, children: [_bodyContent(context), const SizedBox(height: 24), _Actions()]),
      ],
    );
  }

  Widget _bodyContent(BuildContext context) {
    return Container(
      width: 430,
      decoration: BoxDecoration(
        color: AppColors.backgroundSurfacePrimaryWhite,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Pickup and Dropoff
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
            child: Column(
              children: [
                const _LocationTile(icon: 'assets/icons/ic_box_package_courier_hands.svg', title: 'Pickup', subtitle: '2216 North 10th St'),
                const SizedBox(height: 8),
                const _LocationTile(icon: 'assets/icons/ic_box_package_hand_bottom.svg', title: 'Dropoff', subtitle: '2150 N Waterman Ave'),
                const SizedBox(height: 16),
                _buildAddressMap(context),
                const SizedBox(height: 24),
              ],
            ),
          ),
          // Delivery Options
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delivery Options',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: AppColors.textGreyHighest950),
                ),
                const SizedBox(height: 16),
                DeliveryOptionTile(svgIcon: 'assets/icons/ic_priority.svg', title: 'Priority', subtitle: '5-10 min(s) Delivered directly to you', price: '\$5.99', isSelected: false, onTap: () {}),
                const SizedBox(height: 8),
                DeliveryOptionTile(svgIcon: 'assets/icons/ic_schedule.svg', title: 'Schedule', subtitle: 'Select a time', price: '', isSelected: false, onTap: () {}, showArrow: true),
                const SizedBox(height: 8),
                DeliveryOptionTile(svgIcon: 'assets/icons/ic_standard.svg', title: 'Standard', subtitle: '10-25 mins Delivered', price: '', isSelected: true, onTap: () {}),
              ],
            ),
          ),
          const SizedBox(height: 24),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Promocode',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: AppColors.textGreyHighest950),
                ),
                const SizedBox(width: 8),
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/ic_promocode.svg', width: 24, height: 24, colorFilter: ColorFilter.mode(AppColors.textGreyDefault500, BlendMode.srcIn)),
                    const SizedBox(width: 8),
                    const SizedBox(
                      width: 100,
                      height: 36,
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(hintText: 'Enter Code', border: InputBorder.none, isDense: true, contentPadding: EdgeInsets.zero),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    TextButton(onPressed: () {}, child: const Text('Apply')),
                  ],
                ),
                const SizedBox(height: 16),
                const _PriceItem(label: 'Small Box:', value: '\$35.87'),
                const _PriceItem(label: 'Subtotal:', value: '\$35.87'),
                const _PriceItem(label: 'Delivery Fee:', value: '\$8.00'),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total:',
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: AppColors.textGreyHighest950),
                    ),
                    Text(
                      '\$43.87',
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: AppColors.textGreyHighest950),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Divider(thickness: 3, color: AppColors.backgroundSurfaceTertiaryGrey50),
                const SizedBox(height: 16),
                Text(
                  'Payment',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: AppColors.textGreyHighest950),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Container(
                      width: 42,
                      height: 28,
                      decoration: BoxDecoration(color: AppColors.stateBrandHigh700, borderRadius: BorderRadius.circular(4)),
                      alignment: Alignment.center,
                      child: Text(
                        'VISA',
                        style: TextStyle(color: AppColors.textBaseWhite, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text('Visa ••••5290', style: TextStyle(fontSize: 16, color: AppColors.textGreyHighest950)),
                    const Spacer(),
                    Icon(Icons.arrow_forward_ios_rounded, size: 20, color: AppColors.textGreyDefault500),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SizedBox _buildAddressMap(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Obx(() {
        final mapStyle = controller.mapStyle.value;
        return Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: GoogleMap(
                myLocationButtonEnabled: false,
                mapToolbarEnabled: false,
                mapType: MapType.normal,
                initialCameraPosition: DeliveryCheckoutController.googlePlex,
                style: mapStyle,
                onMapCreated: (GoogleMapController mapController) {
                  vm.mapController.complete(mapController);
                },
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 16,
              child: Center(
                child: Material(
                  borderRadius: BorderRadius.circular(24),
                  elevation: 4,
                  color: AppColors.backgroundSurfacePrimaryWhite,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(24),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      child: Text('Edit pin', style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}

class _LocationTile extends StatelessWidget {
  const _LocationTile({required this.icon, required this.title, required this.subtitle});
  final String icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon, width: 24, height: 24, colorFilter: ColorFilter.mode(AppColors.textGreyDefault500, BlendMode.srcIn)),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: AppColors.textGreyHighest950),
            ),
            Text(subtitle, style: TextStyle(fontSize: 12, color: AppColors.textGreyDefault500)),
          ],
        ),
        const Spacer(),
        Icon(Icons.arrow_forward_ios_rounded, size: 20, color: AppColors.textGreyDefault500),
      ],
    );
  }
}

class _PriceItem extends StatelessWidget {
  const _PriceItem({required this.label, required this.value});
  final String label;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: 16, color: AppColors.textGreyDefault500)),
          Text(value, style: TextStyle(fontSize: 16, color: AppColors.textGreyDefault500)),
        ],
      ),
    );
  }
}

class _Actions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430,
      height: 96,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: AppColors.alphaGrey5)),
        color: AppColors.backgroundSurfacePrimaryWhite,
      ),
      child: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(382, 48),
            backgroundColor: AppColors.stateBrandDefault500,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
          ),
          child: Text(
            'Order Now',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.textBaseWhite),
          ),
        ),
      ),
    );
  }
}
