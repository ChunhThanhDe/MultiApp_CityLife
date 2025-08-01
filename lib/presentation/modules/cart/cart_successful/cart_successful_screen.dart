import 'package:flutter/material.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/cart/cart_successful/cart_successful_controller.dart';

class CartSuccessfulScreen extends BaseScreen<CartSuccessfulController> {
  const CartSuccessfulScreen({super.key});

  @override
  bool get setTopSafeArea => true;

  @override
  Widget buildScreen(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Assets.images.imgVector.image(width: 120, height: 120),
              const Icon(Icons.check, size: 40, color: Colors.white),
            ],
          ),
        ),

        const SizedBox(height: 32),
        // Title + subtitle
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            children: [
              Text(
                'Payment Successful',
                style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 28, height: 36 / 28, color: Color(0xFF161A1D)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8),
              Text(
                'You might be receiving more than one package for your order. Please check under "My Orders" to see details.',
                style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 16, height: 24 / 16, color: Color(0xFF4A5763)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const SizedBox(height: 100),
        // Box total bill
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(color: const Color(0xFFF7F8F9), borderRadius: BorderRadius.circular(8)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: [
                  _ItemRow(label: 'Subtotal:', value: '\$23.94'),
                  _ItemRow(label: 'Delivery Fee:', value: '\$0.00'),
                  _ItemRow(label: 'Taxes & Estimated Fees:', value: '\$0.00'),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total:',
                          style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 20, color: Color(0xFF161A1D)),
                        ),
                        Text(
                          '\$23.94',
                          style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 20, color: Color(0xFF161A1D)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        // Done button
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(const Color(0xFF5856D7)),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(32))),
                elevation: WidgetStateProperty.all(0),
              ),
              onPressed: () {
                // TODO: Handle Done
              },
              child: const Text(
                'Done',
                style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        // View Order link
        TextButton(
          onPressed: () {
            // TODO: Handle View Order
          },
          child: const Text(
            'View Order',
            style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 16, color: Color(0xFF5856D7), decoration: TextDecoration.underline),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class _ItemRow extends StatelessWidget {
  const _ItemRow({required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 16, color: Color(0xFF4A5763)),
          ),
          Text(
            value,
            style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 16, color: Color(0xFF4A5763)),
          ),
        ],
      ),
    );
  }
}
