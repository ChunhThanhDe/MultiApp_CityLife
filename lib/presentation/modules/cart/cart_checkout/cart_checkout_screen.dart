import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/domain/enums/service_type.dart';
import 'package:sixam_mart_user/domain/models/response/get_checkout_summary_response.dart';
import 'package:sixam_mart_user/presentation/modules/cart/cart_checkout/cart_checkout_controller.dart';
import 'package:sixam_mart_user/presentation/modules/cart/components/time_picker_sheet.dart';
import 'package:sixam_mart_user/presentation/modules/home/home_controller.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';

class CartCheckoutScreen extends BaseScreen<CartCheckoutController> {
  const CartCheckoutScreen({super.key, this.serviceCart});
  final Service? serviceCart;

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return BasicAppBar(title: 'Checkout');
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Obx(() {
      if (controller.isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      }

      final checkoutData = controller.checkoutSummary.value;
      if (checkoutData == null) {
        return const Center(child: Text('Failed to load checkout data'));
      }

      return SingleChildScrollView(
        child: Column(
          children: [
            if (serviceCart != null) _buildServiceHead(serviceCart!),

            // Address Section
            _buildAddressSection(checkoutData),
            _buildDivider(),

            // Delivery Options Section
            _buildDeliveryOptionsSection(context, checkoutData),
            _buildDivider(),

            // Order Details Section
            if (serviceCart != null && serviceCart!.serviceType != ServiceType.laundry) _buildOrderDetailsSection(checkoutData),
            _buildDivider(),

            // Promocode Section
            if (serviceCart != null && serviceCart!.serviceType != ServiceType.laundry) ...[_buildPromocodeSection(checkoutData), _buildDivider()],

            // Price Summary Section
            _buildPriceSummarySection(checkoutData),
            _buildDivider(),

            // Payment Section
            _buildPaymentSection(checkoutData),
          ],
        ),
      );
    });
  }

  // Helper widgets for section structure

  Widget sectionCard({required List<Widget> children}) {
    return Column(children: children);
  }

  Widget divider([double leftPad = 0]) => Padding(
    padding: EdgeInsets.only(left: leftPad),
    child: Divider(height: 1, color: Color(0xFFE8EBEE)),
  );

  Widget dividerSpace() => Container(width: double.infinity, height: 6, color: Color(0xFFF7F8F9));

  Widget sectionLabel(String label) => Padding(
    padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
    child: Row(
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xFF161A1D), fontFamily: 'Inter'),
        ),
      ],
    ),
  );

  Widget cellItem({
    required Widget icon, // <-- nhận bất cứ widget gì
    required String title,
    required String subtitle,
    VoidCallback? onTap,
  }) => InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
      height: 50,
      child: Row(
        children: [
          SizedBox(width: 24, height: 24, child: icon),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF161A1D)),
                ),
                Text(
                  subtitle,
                  style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 12, color: Color(0xFF4A5763)),
                ),
              ],
            ),
          ),
          Icon(Icons.arrow_forward_ios_rounded, size: 20, color: Color(0xFF4A5763)),
        ],
      ),
    ),
  );

  Widget deliveryOption({
    required bool selected,
    required Widget icon, // Nhận mọi widget, dùng Image.asset, SvgPicture.asset, Icon...
    required String title,
    required String subtitle,
    String? label,
    Widget? trailing,
  }) => Container(
    decoration: BoxDecoration(
      color: selected ? Color(0xFFEFEFFB) : Colors.white,
      border: Border.all(color: selected ? Color(0xFFBEBDEF) : Color(0x1A101214), width: 1),
      borderRadius: BorderRadius.circular(6),
    ),
    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    child: Row(
      children: [
        SizedBox(width: 24, height: 24, child: icon),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF161A1D)),
              ),
              Text(
                subtitle,
                style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 12, color: Color(0xFF4A5763)),
              ),
            ],
          ),
        ),
        if (label != null)
          Text(
            label,
            style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF4A5763)),
          ),
        if (trailing != null) trailing,
        if (selected) Icon(Icons.check_circle, color: Color(0xFF242290), size: 24),
      ],
    ),
  );

  Widget orderGroupItem({required String logo, required String name, required String detail, required String amount}) => Container(
    height: 66,
    margin: EdgeInsets.only(bottom: 8),
    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
    child: Row(
      children: [
        // Sử dụng CircleAvatar với child là SvgPicture.asset
        CircleAvatar(
          radius: 16,
          backgroundColor: Colors.transparent, // Nếu muốn không viền
          child: SvgPicture.asset(
            logo,
            width: 32, // hoặc 30 để vừa vòng tròn
            height: 32,
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF161A1D)),
              ),
              Text(
                detail,
                style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 12, color: Color(0xFF4A5763)),
              ),
            ],
          ),
        ),
        Text(
          amount,
          style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF4A5763)),
        ),
        Icon(Icons.keyboard_arrow_down_rounded, color: Color(0xFF4A5763)),
      ],
    ),
  );
  Widget priceRow(String left, String right) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 2),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          left,
          style: TextStyle(color: Color(0xFF4A5763), fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.w400),
        ),
        Text(
          right,
          style: TextStyle(color: Color(0xFF4A5763), fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ],
    ),
  );

  Widget paymentItem() => Container(
    padding: EdgeInsets.symmetric(vertical: 4),
    child: Row(
      children: [
        Container(
          width: 42,
          height: 28,
          decoration: BoxDecoration(color: Color(0xFF1434CB), borderRadius: BorderRadius.circular(4)),
          alignment: Alignment.center,
          child: Text(
            "VISA",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15, letterSpacing: 1.2, fontFamily: 'Inter'),
          ),
        ),
        SizedBox(width: 12),
        Text(
          "Visa ••••5290",
          style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF161A1D)),
        ),
        Spacer(),
        Icon(Icons.arrow_forward_ios_rounded, size: 20, color: Color(0xFF4A5763)),
      ],
    ),
  );

  Widget _buildAddressSection(GetCheckoutSummaryResponse checkoutData) {
    final selectedAddress = controller.selectedAddress ?? checkoutData.defaultAddress;

    return sectionCard(
      children: [
        sectionLabel("Schedules"),
        cellItem(
          icon: SvgPicture.asset('assets/icons/ic_home.svg'),
          title: selectedAddress?.addressType ?? "Address",
          subtitle: selectedAddress?.address ?? "No address selected",
          onTap: () => _showAddressSelection(checkoutData.addresses ?? []),
        ),
        divider(60),
        cellItem(icon: SvgPicture.asset('assets/icons/ic_box_package_courier_hands.svg'), title: "Hand it to me", subtitle: "Please Hand it to me", onTap: () {}),
      ],
    );
  }

  Widget _buildDeliveryOptionsSection(BuildContext context, GetCheckoutSummaryResponse checkoutData) {
    return Column(
      children: [
        sectionLabel("Delivery Options"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              // Priority Option
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Obx(
                  () => GestureDetector(
                    onTap: () => controller.selectDeliveryOption('Priority'),
                    child: deliveryOption(
                      selected: controller.selectedDeliveryOption.value == 'Priority',
                      icon: Icon(Icons.flash_on, size: 24, color: Color(0xFF4A5763)),
                      title: 'Priority',
                      subtitle: '5-10 min(s) Delivered directly to you',
                      label: '\$5.99',
                    ),
                  ),
                ),
              ),
              // Schedule Option
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Obx(
                  () => GestureDetector(
                    onTap: () {
                      controller.selectDeliveryOption('Schedule');
                      // Show time picker dialog
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        builder: (context) => ClipRRect(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                          child: FractionallySizedBox(heightFactor: 0.82, child: const TimePickerSheet()),
                        ),
                      );
                    },
                    child: deliveryOption(
                      selected: controller.selectedDeliveryOption.value == 'Schedule',
                      icon: Icon(Icons.schedule, size: 24, color: Color(0xFF4A5763)),
                      title: 'Schedule',
                      subtitle: 'Select a time',
                      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Color(0xFF4A5763)),
                    ),
                  ),
                ),
              ),
              // Standard Option
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Obx(
                  () => GestureDetector(
                    onTap: () => controller.selectDeliveryOption('Standard'),
                    child: deliveryOption(
                      selected: controller.selectedDeliveryOption.value == 'Standard',
                      icon: Icon(Icons.access_time, size: 24, color: Color(0xFF4A5763)),
                      title: 'Standard',
                      subtitle: '10-25 min(s) Delivered',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildOrderDetailsSection(GetCheckoutSummaryResponse checkoutData) {
    return Column(
      children: [
        sectionLabel("Order Details"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: (checkoutData.cart ?? []).map((store) {
              final itemCount = store.items?.length ?? 0;
              final storeTotal = store.items?.fold<double>(0.0, (sum, item) => sum + ((item.itemPrice ?? 0.0) * (item.itemQuantity ?? 1))) ?? 0.0;

              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: orderGroupItem(
                  logo: store.storeLogo ?? "assets/images/default_store.png",
                  name: store.storeName ?? "Store",
                  detail: "$itemCount items",
                  amount: "\$${storeTotal.toStringAsFixed(2)}",
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildPromocodeSection(GetCheckoutSummaryResponse checkoutData) {
    return Column(
      children: [
        sectionLabel("Promocode"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              Icon(Icons.sell_outlined, color: Color(0xFF798A9A), size: 18),
              SizedBox(width: 8),
              Expanded(
                child: GestureDetector(
                  onTap: () => _showPromocodeDialog(checkoutData.availableCoupons ?? []),
                  child: Obx(
                    () => Text(
                      controller.promoCode.value.isEmpty ? "Enter Code" : controller.promoCode.value,
                      style: TextStyle(fontFamily: 'Inter', color: controller.promoCode.value.isEmpty ? Color(0xFF798A9A) : Color(0xFF161A1D), fontWeight: FontWeight.w400, fontSize: 16),
                    ),
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Color(0xFF5856D7),
                  minimumSize: Size(0, 32),
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                  textStyle: TextStyle(fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.w500),
                ),
                onPressed: () => _showPromocodeDialog(checkoutData.availableCoupons ?? []),
                child: Text("Apply"),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPriceSummarySection(GetCheckoutSummaryResponse checkoutData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Obx(
        () => Column(
          children: [
            priceRow("Subtotal:", "\$${(checkoutData.subtotal ?? 0.0).toStringAsFixed(2)}"),
            priceRow("Delivery Fee:", "\$${controller.selectedDeliveryFee.toStringAsFixed(2)}"),
            priceRow("Taxes & Estimated Fees:", "\$${(checkoutData.tax ?? 0.0).toStringAsFixed(2)}"),
            priceRow("Discount:", "-\$${(checkoutData.discount ?? 0.0).toStringAsFixed(2)}"),
            SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total:",
                  style: TextStyle(color: Color(0xFF161A1D), fontWeight: FontWeight.w500, fontSize: 20, fontFamily: 'Inter'),
                ),
                Text(
                  "\$${controller.calculatedTotal.toStringAsFixed(2)}",
                  style: TextStyle(color: Color(0xFF161A1D), fontWeight: FontWeight.w500, fontSize: 20, fontFamily: 'Inter'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentSection(GetCheckoutSummaryResponse checkoutData) {
    return Column(
      children: [
        sectionLabel("Payment"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: (checkoutData.paymentMethods ?? []).map((method) {
              return Obx(
                () => GestureDetector(
                  onTap: () => controller.selectPaymentMethod(method.key ?? ''),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: controller.selectedPaymentMethod.value == method.key ? Color(0xFF5856D7) : Color(0xFFE5E7EB)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Icon(_getPaymentIcon(method.key ?? ''), color: controller.selectedPaymentMethod.value == method.key ? Color(0xFF5856D7) : Color(0xFF798A9A)),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            method.label ?? '',
                            style: TextStyle(fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF161A1D)),
                          ),
                        ),
                        if (controller.selectedPaymentMethod.value == method.key) Icon(Icons.check_circle, color: Color(0xFF5856D7)),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        // Order Button
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 16),
          child: SizedBox(
            width: double.infinity,
            height: 48,
            child: Obx(
              () => ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF5856D7),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                ),
                onPressed: controller.isLoading.value
                    ? null
                    : () {
                        if (serviceCart != null && serviceCart!.serviceType == ServiceType.laundry) {
                          Get.toNamed(AppRoutes.cartSuccessful);
                        } else {
                          controller.orderNow();
                        }
                      },
                child: controller.isLoading.value
                    ? SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2, valueColor: AlwaysStoppedAnimation<Color>(Colors.white)))
                    : Text(
                        "Order Now",
                        style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w500),
                      ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return dividerSpace();
  }

  // Helper methods

  IconData _getPaymentIcon(String key) {
    switch (key) {
      case 'credit_card':
        return Icons.credit_card;
      case 'digital_wallet':
        return Icons.account_balance_wallet;
      case 'cash_on_delivery':
      default:
        return Icons.money;
    }
  }

  void _showAddressSelection(List<CheckoutAddress> addresses) {
    // TODO: Implement address selection dialog
    Get.snackbar('Info', 'Address selection dialog would open here');
  }

  void _showPromocodeDialog(List<AvailableCoupon> coupons) {
    // TODO: Implement promocode dialog
    Get.snackbar('Info', 'Promocode dialog would open here');
  }

  Widget _buildServiceHead(Service serviceCart) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Service Icon
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: const Color(0xFFF7F8F9)),
            child: Center(child: Image.asset(serviceCart.image, width: 50, height: 50, fit: BoxFit.contain)),
          ),
          const SizedBox(height: 16),

          // Text and Description Section
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Service Title
              Text(
                serviceCart.title,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  height: 1.5, // line-height: 30px / font-size: 20px = 1.5
                  color: Color(0xFF161A1D),
                ),
              ),
              const SizedBox(height: 16),

              // Service Description
              Text(
                serviceCart.description,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  height: 1.5, // line-height: 18px / font-size: 12px = 1.5
                  color: Color(0xFF4A5763),
                ),
              ),
              const SizedBox(height: 16),

              // More Details Button
              GestureDetector(
                onTap: () {
                  // Navigate to service details or show more info
                  Get.snackbar('Info', 'More details for ${serviceCart.title}');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'More details',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        height: 1.43, // line-height: 20px / font-size: 14px ≈ 1.43
                        color: Color(0xFF5856D7),
                      ),
                    ),
                    const SizedBox(width: 8),
                    SizedBox(width: 20, height: 20, child: const Icon(Icons.arrow_forward_ios, size: 12, color: Color(0xFF5856D7))),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
