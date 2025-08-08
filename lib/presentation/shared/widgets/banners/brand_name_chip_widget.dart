import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/domain/models/response/get_stores_response.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';

class BrandNameChipWidget extends StatelessWidget {

  const BrandNameChipWidget({required this.item, super.key});
  final BannerEntity item;

  @override
  Widget build(BuildContext context) {
    // Only show chip when there's at least logo or name
    if (!_hasValidLogo() && !_hasValidName()) {
      return const SizedBox.shrink();
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: ShapeDecoration(
        color: AppColors.backgroundSurfacePrimaryWhite.withValues(alpha: 0.8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        shadows: [BoxShadow(color: AppColors.textGreyHighest950.withValues(alpha: 0.24), blurRadius: 32, offset: const Offset(0, 0), spreadRadius: 0)],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8,
        children: [if (_hasValidLogo()) _buildLogo(), if (_hasValidName()) _buildName()],
      ),
    );
  }

  Widget _buildLogo() {
    return ClipOval(child: AppImage.network(item.logo!, width: 24, height: 24));
  }

  Widget _buildName() {
    return Flexible(
      child: Text(
        item.name!,
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: AppTextStyles.typographyH11Medium.copyWith(color: AppColors.textGreyHighest950),
      ),
    );
  }

  bool _hasValidLogo() => item.logo?.trim().isNotEmpty == true;
  bool _hasValidName() => item.name?.trim().isNotEmpty == true;
}
