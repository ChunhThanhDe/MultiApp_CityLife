import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/domain/models/response/get_stores_response.dart';

class DeliveryInfoWidget extends StatelessWidget {

  const DeliveryInfoWidget({required this.item, super.key});
  final BannerEntity item;

  @override
  Widget build(BuildContext context) {
    final List<Widget> infoWidgets = [];

    // Rating
    if (_hasValidRating()) {
      infoWidgets.add(Text('${item.rating}★', style: AppTextStyles.typographyH12SemiBold.copyWith(color: AppColors.textGreyHigh700)));
    }

    // Rating count
    if (_hasValidRatingCount()) {
      infoWidgets.add(Text('(${item.reviewCount})', style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyHigh700)));
    }

    // Delivery time
    if (_hasValidDeliveryTime()) {
      if (infoWidgets.isNotEmpty) {
        infoWidgets.add(Text('•', style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textBrandDefault500)));
      }
      infoWidgets.add(Text(item.deliveryTime!, style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyHigh700)));
    }

    if (infoWidgets.isEmpty) return const SizedBox.shrink();

    return Column(children: [Row(spacing: 4, children: infoWidgets)]);
  }

  bool _hasValidRating() => item.rating != null;
  bool _hasValidRatingCount() => item.reviewCount != null;
  bool _hasValidDeliveryTime() => item.deliveryTime?.trim().isNotEmpty == true;
}
