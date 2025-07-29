import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/domain/models/response/get_stores_response.dart';

class DeliveryInfoWidget extends StatelessWidget {
  final StoreBanner item;

  const DeliveryInfoWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> infoWidgets = [];

    // Delivery fee
    if (_hasValidDeliveryFee()) {
      infoWidgets.add(
        Text(
          '\$${item.deliveryFee!.toStringAsFixed(2)} Delivery fee',
          style: AppTextStyles.typographyH12Regular.copyWith(
            color: AppColors.textGreyHigh700,
          ),
        ),
      );
    }

    // Delivery time
    if (_hasValidDeliveryTime()) {
      if (infoWidgets.isNotEmpty) {
        infoWidgets.add(
          Text(
            '•',
            style: AppTextStyles.typographyH12Regular.copyWith(
              color: AppColors.textBrandDefault500,
            ),
          ),
        );
      }
      infoWidgets.add(
        Text(
          item.deliveryTime!,
          style: AppTextStyles.typographyH12Regular.copyWith(
            color: AppColors.textGreyHigh700,
          ),
        ),
      );
    }

    if (infoWidgets.isEmpty) return const SizedBox.shrink();

    return Row(
      spacing: 4,
      children: infoWidgets,
    );
  }

  bool _hasValidDeliveryFee() => item.deliveryFee != null && item.deliveryFee! > 0;
  bool _hasValidDeliveryTime() => item.deliveryTime?.trim().isNotEmpty == true;
}