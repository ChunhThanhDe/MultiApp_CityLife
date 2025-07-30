import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/domain/models/response/get_checkout_summary_response.dart';
import 'package:sixam_mart_user/presentation/modules/cart/cart_checkout/cart_checkout_controller.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';

class CartCheckoutScreen extends BaseScreen<CartCheckoutController> {
  const CartCheckoutScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return const BasicAppBar(title: 'Checkout');
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
            // Address Section
            _buildAddressSection(checkoutData),
            _buildDivider(),

            // Delivery Options Section
            _buildDeliveryOptionsSection(checkoutData),
            _buildDivider(),

            // Order Details Section
            _buildOrderDetailsSection(checkoutData),
            _buildDivider(),

            // Promocode Section
            _buildPromocodeSection(checkoutData),
            _buildDivider(),

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

  Widget sectionCard({required List<Widget> children}) => Column(children: children);

  Widget divider([double leftPad = 0]) => Padding(
    padding: EdgeInsets.only(left: leftPad),
    child: const Divider(height: 1, color: Color(0xFFE8EBEE)),
  );

  Widget dividerSpace() => Container(width: double.infinity, height: 6, color: const Color(0xFFF7F8F9));

  Widget sectionLabel(String label) => Padding(
    padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
    child: Row(
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xFF161A1D), fontFamily: 'Inter'),
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
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
      height: 50,
      child: Row(
        children: [
          SizedBox(width: 24, height: 24, child: icon),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF161A1D)),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 12, color: Color(0xFF4A5763)),
                ),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios_rounded, size: 20, color: Color(0xFF4A5763)),
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
      color: selected ? const Color(0xFFEFEFFB) : Colors.white,
      border: Border.all(color: selected ? const Color(0xFFBEBDEF) : const Color(0x1A101214), width: 1),
      borderRadius: BorderRadius.circular(6),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    child: Row(
      children: [
        SizedBox(width: 24, height: 24, child: icon),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF161A1D)),
              ),
              Text(
                subtitle,
                style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 12, color: Color(0xFF4A5763)),
              ),
            ],
          ),
        ),
        if (label != null)
          Text(
            label,
            style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF4A5763)),
          ),
        if (trailing != null) trailing,
        if (selected) const Icon(Icons.check_circle, color: Color(0xFF242290), size: 24),
      ],
    ),
  );

  Widget orderGroupItem({required String logo, required String name, required String detail, required String amount}) => Container(
    height: 66,
    margin: const EdgeInsets.only(bottom: 8),
    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
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
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF161A1D)),
              ),
              Text(
                detail,
                style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 12, color: Color(0xFF4A5763)),
              ),
            ],
          ),
        ),
        Text(
          amount,
          style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF4A5763)),
        ),
        const Icon(Icons.keyboard_arrow_down_rounded, color: Color(0xFF4A5763)),
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
          style: const TextStyle(color: Color(0xFF4A5763), fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.w400),
        ),
        Text(
          right,
          style: const TextStyle(color: Color(0xFF4A5763), fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ],
    ),
  );

  Widget paymentItem() => Container(
    padding: const EdgeInsets.symmetric(vertical: 4),
    child: Row(
      children: [
        Container(
          width: 42,
          height: 28,
          decoration: BoxDecoration(color: const Color(0xFF1434CB), borderRadius: BorderRadius.circular(4)),
          alignment: Alignment.center,
          child: const Text(
            'VISA',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15, letterSpacing: 1.2, fontFamily: 'Inter'),
          ),
        ),
        const SizedBox(width: 12),
        const Text(
          'Visa ••••5290',
          style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF161A1D)),
        ),
        const Spacer(),
        const Icon(Icons.arrow_forward_ios_rounded, size: 20, color: Color(0xFF4A5763)),
      ],
    ),
  );

  Widget _buildAddressSection(GetCheckoutSummaryResponse checkoutData) {
    final selectedAddress = controller.selectedAddress ?? checkoutData.defaultAddress;

    return sectionCard(
      children: [
        cellItem(
          icon: SvgPicture.asset('assets/icons/ic_home.svg'),
          title: selectedAddress?.addressType ?? 'Address',
          subtitle: selectedAddress?.address ?? 'No address selected',
          onTap: () => _showAddressSelection(checkoutData.addresses ?? []),
        ),
        divider(60),
        cellItem(icon: SvgPicture.asset('assets/icons/ic_box_package_courier_hands.svg'), title: 'Hand it to me', subtitle: 'Please Hand it to me', onTap: () {}),
      ],
    );
  }

  Widget _buildDeliveryOptionsSection(GetCheckoutSummaryResponse checkoutData) {
    return Column(
      children: [
        sectionLabel('Delivery Options'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: (checkoutData.deliveryOptions ?? []).map((option) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Obx(
                  () => GestureDetector(
                    onTap: () => controller.selectDeliveryOption(option.label ?? 'Standard'),
                    child: deliveryOption(
                      selected: controller.selectedDeliveryOption.value == option.label,
                      icon: _getDeliveryIcon(option.key ?? 1),
                      title: option.label ?? '',
                      subtitle: option.desc ?? '',
                      label: option.fee != null ? '\$${option.fee!.toStringAsFixed(2)}' : null,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildOrderDetailsSection(GetCheckoutSummaryResponse checkoutData) {
    return Column(
      children: [
        sectionLabel('Order Details'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: (checkoutData.cart ?? []).map((store) {
              final itemCount = store.items?.length ?? 0;
              final storeTotal = store.items?.fold<double>(0.0, (sum, item) => sum + ((item.itemPrice ?? 0.0) * (item.itemQuantity ?? 1))) ?? 0.0;

              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: orderGroupItem(
                  logo: store.storeLogo ?? 'assets/images/default_store.png',
                  name: store.storeName ?? 'Store',
                  detail: '$itemCount items',
                  amount: '\$${storeTotal.toStringAsFixed(2)}',
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
        sectionLabel('Promocode'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              const Icon(Icons.sell_outlined, color: Color(0xFF798A9A), size: 18),
              const SizedBox(width: 8),
              Expanded(
                child: GestureDetector(
                  onTap: () => _showPromocodeDialog(checkoutData.availableCoupons ?? []),
                  child: Obx(
                    () => Text(
                      controller.promoCode.value.isEmpty ? 'Enter Code' : controller.promoCode.value,
                      style: TextStyle(fontFamily: 'Inter', color: controller.promoCode.value.isEmpty ? const Color(0xFF798A9A) : const Color(0xFF161A1D), fontWeight: FontWeight.w400, fontSize: 16),
                    ),
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: const Color(0xFF5856D7),
                  minimumSize: const Size(0, 32),
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                  textStyle: const TextStyle(fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.w500),
                ),
                onPressed: () => _showPromocodeDialog(checkoutData.availableCoupons ?? []),
                child: const Text('Apply'),
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
            priceRow('Subtotal:', '\$${(checkoutData.subtotal ?? 0.0).toStringAsFixed(2)}'),
            priceRow('Delivery Fee:', '\$${controller.selectedDeliveryFee.toStringAsFixed(2)}'),
            priceRow('Taxes & Estimated Fees:', '\$${(checkoutData.tax ?? 0.0).toStringAsFixed(2)}'),
            priceRow('Discount:', '-\$${(checkoutData.discount ?? 0.0).toStringAsFixed(2)}'),
            const SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Total:',
                  style: TextStyle(color: Color(0xFF161A1D), fontWeight: FontWeight.w500, fontSize: 20, fontFamily: 'Inter'),
                ),
                Text(
                  '\$${controller.calculatedTotal.toStringAsFixed(2)}',
                  style: const TextStyle(color: Color(0xFF161A1D), fontWeight: FontWeight.w500, fontSize: 20, fontFamily: 'Inter'),
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
        sectionLabel('Payment'),
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
                      border: Border.all(color: controller.selectedPaymentMethod.value == method.key ? const Color(0xFF5856D7) : const Color(0xFFE5E7EB)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Icon(_getPaymentIcon(method.key ?? ''), color: controller.selectedPaymentMethod.value == method.key ? const Color(0xFF5856D7) : const Color(0xFF798A9A)),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            method.label ?? '',
                            style: const TextStyle(fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF161A1D)),
                          ),
                        ),
                        if (controller.selectedPaymentMethod.value == method.key) const Icon(Icons.check_circle, color: Color(0xFF5856D7)),
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
                  backgroundColor: const Color(0xFF5856D7),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                ),
                onPressed: controller.isLoading.value ? null : () => controller.orderNow(),
                child: controller.isLoading.value
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      )
                    : const Text(
                        'Order Now',
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
  Widget _getDeliveryIcon(int key) {
    switch (key) {
      case 2:
        return SvgPicture.asset('assets/icons/ic_priority.svg');
      case 3:
        return SvgPicture.asset('assets/icons/ic_schedule.svg');
      case 1:
      default:
        return SvgPicture.asset('assets/icons/ic_standard.svg');
    }
  }

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
}
