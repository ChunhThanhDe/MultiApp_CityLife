import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
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
              Icon(Icons.check, size: 40, color: AppTheme.theme.textBaseWhite),
            ],
          ),
        ),

        SizedBox(height: 32.h),
        // Title + subtitle
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.0.w),
          child: Column(
            children: [
              Text(
                'Payment Successful',
                style: AppTextStyles.typographyH1SemiBold.copyWith(color: AppTheme.theme.textGreyHighest950, height: 36 / 28),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8.h),
              Text(
                'You might be receiving more than one package for your order. Please check under "My Orders" to see details.',
                style: AppTextStyles.typographyH6Regular.copyWith(color: AppTheme.theme.textGreyHigh700, height: 24 / 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        SizedBox(height: 100.h),
        // Box total bill
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(color: AppTheme.theme.backgroundSurfaceTertiaryGrey50, borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: Column(
                children: [
                  const _ItemRow(label: 'Subtotal:', value: '\$23.94'),
                  const _ItemRow(label: 'Delivery Fee:', value: '\$0.00'),
                  const _ItemRow(label: 'Taxes & Estimated Fees:', value: '\$0.00'),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total:',
                          style: AppTextStyles.typographyH5Medium.copyWith(color: AppTheme.theme.textGreyHighest950),
                        ),
                        Text(
                          '\$23.94',
                          style: AppTextStyles.typographyH5Medium.copyWith(color: AppTheme.theme.textGreyHighest950),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 20.h),
        // Done button
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SizedBox(
            width: double.infinity,
            height: 48.h,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(AppTheme.theme.stateBrandDefault500),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(32))),
                elevation: WidgetStateProperty.all(0),
              ),
              onPressed: () {
                // TODO: Handle Done
              },
              child: Text(
                'Done',
                style: AppTextStyles.typographyH6Medium.copyWith(color: AppTheme.theme.textBaseWhite),
              ),
            ),
          ),
        ),
        SizedBox(height: 8.h),
        // View Order link
        TextButton(
          onPressed: () {
            // TODO: Handle View Order
          },
          child: Text(
            'View Order',
            style: AppTextStyles.typographyH6Medium.copyWith(color: AppTheme.theme.stateBrandDefault500, decoration: TextDecoration.underline),
          ),
        ),
        SizedBox(height: 16.h),
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
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: AppTextStyles.typographyH6Regular.copyWith(color: AppTheme.theme.textGreyHigh700),
          ),
          Text(
            value,
            style: AppTextStyles.typographyH6Regular.copyWith(color: AppTheme.theme.textGreyHigh700),
          ),
        ],
      ),
    );
  }
}
