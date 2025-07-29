import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/domain/models/response/get_stores_response.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';
import 'package:sixam_mart_user/presentation/shared/widgets/banners/delivery_info_widget.dart';

class BannerDiscountWidget extends StatelessWidget {
  final StoreBanner item;
  final int index;
  final int totalItems;
  final VoidCallback? onTap;

  const BannerDiscountWidget({super.key, required this.item, required this.index, required this.totalItems, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: item.status == 1 ? onTap : null,
      child: Container(
        width: 223,
        margin: EdgeInsets.only(right: index == totalItems - 1 ? 24 : 16, left: index == 0 ? 24 : 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildImageSection(), const SizedBox(height: 8), _buildInfoSection(), _buildDeliveryInfo()]),
      ),
    );
  }

  Widget _buildImageSection() {
    return Stack(
      children: [
        _buildMainImage(),
        if (item.status != 1) _buildStatusOverlay(),
        if (_hasValidDeliveryFee() && item.status == 1) _buildDiscountBadge(),
        if (_hasValidLogo() && item.status == 1) _buildLogo(),
      ],
    );
  }

  Widget _buildMainImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: AppImage.network(item.coverPhoto ?? '', width: 223, height: 120, fit: BoxFit.cover),
    );
  }

  Widget _buildStatusOverlay() {
    return Positioned.fill(
      child: Container(
        decoration: BoxDecoration(color: Colors.black.withValues(alpha: 0.6), borderRadius: BorderRadius.circular(8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(color: Colors.white.withValues(alpha: 0.2), shape: BoxShape.circle),
              child: Icon(item.status == 0 ? Icons.nightlight_round : Icons.lock, color: Colors.white, size: 20),
            ),
            const SizedBox(height: 8),
            Text(
              item.status == 0 ? 'Closed' : 'Currently Unavailable',
              style: AppTextStyles.typographyH11Medium.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDiscountBadge() {
    return Positioned(
      top: 8,
      right: 8,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
        decoration: ShapeDecoration(
          color: AppColors.stateSuccessHigh700,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
          shadows: const [
            BoxShadow(color: Color(0x19101214), blurRadius: 16, offset: Offset(0, 12), spreadRadius: -6),
            BoxShadow(color: Color(0x0C101214), blurRadius: 4, offset: Offset(0, 2), spreadRadius: -2),
          ],
        ),
        child: Text(
          '${item.deliveryFee!.toInt()}% Off',
          textAlign: TextAlign.center,
          style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textBaseWhite),
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Positioned(top: 8, left: 8, child: ClipOval(child: AppImage.network(item.logo!, width: 64, height: 64)));
  }

  Widget _buildInfoSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [if (_hasValidName()) _buildName(), if (_hasValidRating() && item.rating! > 4.0) _buildVerifiedBadge()],
    );
  }

  Widget _buildName() {
    return Expanded(
      child: Text(
        item.name!,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: AppTextStyles.typographyH10Medium.copyWith(color: AppColors.textGreyHighest950),
      ),
    );
  }

  Widget _buildVerifiedBadge() {
    return Padding(padding: const EdgeInsets.only(left: 8), child: Assets.icons.icVerified.svg());
  }

  Widget _buildDeliveryInfo() {
    if (!_hasValidDeliveryFee() && !_hasValidDeliveryTime()) {
      return const SizedBox.shrink();
    }

    return DeliveryInfoWidget(item: item);
  }

  bool _hasValidDeliveryFee() => item.deliveryFee != null && item.deliveryFee! > 0;
  bool _hasValidRating() => item.rating != null && item.rating! > 0;
  bool _hasValidLogo() => item.logo?.trim().isNotEmpty == true;
  bool _hasValidName() => item.name?.trim().isNotEmpty == true;
  bool _hasValidDeliveryTime() => item.deliveryTime?.trim().isNotEmpty == true;
}
