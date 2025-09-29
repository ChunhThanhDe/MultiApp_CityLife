import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/domain/models/response/get_stores_response.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';

class BrandLogoNameWidget extends StatelessWidget {
  const BrandLogoNameWidget({required this.item, required this.index, required this.totalItems, super.key, this.onTap});
  final BannerEntity item;
  final int index;
  final int totalItems;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    if (!_hasValidLogo() && !_hasValidCoverPhoto() && !_hasValidName()) {
      return const SizedBox.shrink();
    }

    return GestureDetector(
      onTap: item.status == 1 ? onTap : null,
      child: Container(
        width: 80,
        margin: EdgeInsets.only(right: index == totalItems - 1 ? 24 : 16, left: index == 0 ? 24 : 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildImageWithOverlay(),
            if (_hasValidName()) ...[const SizedBox(height: 4), _buildName()],
          ],
        ),
      ),
    );
  }

  Widget _buildImageWithOverlay() {
    return Stack(children: [_buildImage(), if (item.status != 1) _buildStatusOverlay()]);
  }

  Widget _buildImage() {
    return ClipOval(child: AppImage.network(item.image ?? item.coverPhoto ?? '', width: 64, height: 64));
  }

  Widget _buildStatusOverlay() {
    return Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(color: AppColors.textGreyHighest950.withValues(alpha: 0.6), shape: BoxShape.circle),
      child: Icon(item.status == 0 ? Icons.nightlight_round : Icons.lock, color: AppColors.backgroundSurfacePrimaryWhite, size: 20),
    );
  }

  Widget _buildName() {
    return Text(
      item.name!,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.center,
      style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textBrandDefault500),
    );
  }

  bool _hasValidLogo() => item.logo?.trim().isNotEmpty == true;
  bool _hasValidCoverPhoto() => item.coverPhoto?.trim().isNotEmpty == true;
  bool _hasValidName() => item.name?.trim().isNotEmpty == true;
}
