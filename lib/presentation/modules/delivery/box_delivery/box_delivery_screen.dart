import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/delivery/components/delivery_pickup_location_bottom_sheet.dart';
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
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Label
                Row(
                  children: [
                    Text(
                      "Location details",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF161A1D),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      "*",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFFF3B30),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                // Pickup Location input (clickable)
                GestureDetector(
                  onTap: () => showPickupLocationBottomSheet(context),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xFFE8EBEE)),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/ic_box_package_hand_bottom.svg',
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Pickup Location",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF798A9A),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Dropoff Location input (clickable)
                GestureDetector(
                  onTap: () => showDropoffLocationBottomSheet(context),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xFFE8EBEE)),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                    ),
                    margin: EdgeInsets.only(top: 0),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/ic_box_package_courier_hands.svg',
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Dropoff Location",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF798A9A),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // This shows the address bottom sheet (demo: pickup location)
  void showPickupLocationBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => PickupLocationBottomSheet(),
    );
  }

  void showDropoffLocationBottomSheet(BuildContext context) {
    // You can make a different widget or reuse the same as pickup
    showPickupLocationBottomSheet(context);
  }
}
