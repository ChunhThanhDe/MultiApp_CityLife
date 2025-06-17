import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/delivery/components/delivery_option.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';

import 'delivery_checkout_controller.dart';

class DeliveryCheckoutScreen extends BaseScreen<DeliveryCheckoutController> {
  const DeliveryCheckoutScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return BasicAppBar(
      title: "Box Delivery",
      onBack: () => Get.back(),
    );
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Stack(
      children: [
        ListView(
          padding: EdgeInsets.zero,
          children: [
            _bodyContent(context),
            SizedBox(height: 24),
            _Actions(),
          ],
        ),
      ],
    );
  }

  Widget _bodyContent(BuildContext context) {
    return Container(
      width: 430,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Pickup and Dropoff
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
            child: Column(
              children: [
                _LocationTile(
                  icon: 'assets/icons/ic_box_package_courier_hands.svg',
                  title: "Pickup",
                  subtitle: "2216 North 10th St",
                ),
                SizedBox(height: 8),
                _LocationTile(
                  icon: 'assets/icons/ic_box_package_hand_bottom.svg',
                  title: "Dropoff",
                  subtitle: "2150 N Waterman Ave",
                ),
                SizedBox(height: 16),
                _buildAddressMap(context),
                SizedBox(height: 24),
              ],
            ),
          ),
          // Delivery Options
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Delivery Options", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Color(0xFF161A1D))),
                SizedBox(height: 16),
                DeliveryOptionTile(
                  svgIcon: 'assets/icons/ic_priority.svg',
                  title: "Priority",
                  subtitle: "5-10 min(s) Delivered directly to you",
                  price: "\$5.99",
                  isSelected: false,
                  onTap: () {},
                ),
                SizedBox(height: 8),
                DeliveryOptionTile(
                  svgIcon: 'assets/icons/ic_schedule.svg',
                  title: "Schedule",
                  subtitle: "Select a time",
                  price: "",
                  isSelected: false,
                  onTap: () {},
                  showArrow: true,
                ),
                SizedBox(height: 8),
                DeliveryOptionTile(
                  svgIcon: 'assets/icons/ic_standard.svg',
                  title: "Standard",
                  subtitle: "10-25 mins Delivered",
                  price: "",
                  isSelected: true,
                  onTap: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 24),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Promocode", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Color(0xFF161A1D))),
                SizedBox(width: 8),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/ic_promocode.svg',
                      width: 24,
                      height: 24,
                      color: Color(0xFF4A5763),
                    ),
                    SizedBox(width: 8),
                    SizedBox(
                      width: 100,
                      height: 36,
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Enter Code",
                                border: InputBorder.none,
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text("Apply"),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                _PriceItem(label: "Small Box:", value: "\$35.87"),
                _PriceItem(label: "Subtotal:", value: "\$35.87"),
                _PriceItem(label: "Delivery Fee:", value: "\$8.00"),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total:", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Color(0xFF161A1D))),
                    Text("\$43.87", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Color(0xFF161A1D))),
                  ],
                ),
                SizedBox(height: 16),
                Divider(thickness: 3, color: Color(0xFFE8EBEE)),
                SizedBox(height: 16),
                Text("Payment", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Color(0xFF161A1D))),
                SizedBox(height: 8),
                Row(
                  children: [
                    Container(
                      width: 42,
                      height: 28,
                      decoration: BoxDecoration(
                        color: Color(0xFF1434CB),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      alignment: Alignment.center,
                      child: Text("VISA", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(width: 12),
                    Text("Visa ••••5290", style: TextStyle(fontSize: 16, color: Color(0xFF161A1D))),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_rounded, size: 20, color: Color(0xFF4A5763)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildAddressMap(BuildContext context) {
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
                initialCameraPosition: vm.googlePlex,
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
                  color: Colors.white,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(24),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      child: Text(
                        'Edit pin',
                        style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHighest950),
                      ),
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
  final String icon;
  final String title;
  final String subtitle;

  const _LocationTile({required this.icon, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          icon,
          width: 24,
          height: 24,
          color: Color(0xFF4A5763),
        ),
        SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF161A1D))),
            Text(subtitle, style: TextStyle(fontSize: 12, color: Color(0xFF4A5763))),
          ],
        ),
        Spacer(),
        Icon(Icons.arrow_forward_ios_rounded, size: 20, color: Color(0xFF4A5763)),
      ],
    );
  }
}

class _PriceItem extends StatelessWidget {
  final String label;
  final String value;
  const _PriceItem({required this.label, required this.value});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: 16, color: Color(0xFF4A5763))),
          Text(value, style: TextStyle(fontSize: 16, color: Color(0xFF4A5763))),
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
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Color(0x11001012))),
        color: Colors.white,
      ),
      child: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            minimumSize: Size(382, 48),
            backgroundColor: Color(0xFF5856D7),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          child: Text(
            "Order Now",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
