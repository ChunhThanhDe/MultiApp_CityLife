import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/domain/models/response/get_stores_response.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';
import 'package:sixam_mart_user/presentation/shared/widgets/banners/brand_name_chip_widget.dart';
import 'package:sixam_mart_user/presentation/shared/widgets/banners/status_overlay_widget.dart';

class BannerFloatingLogoWidget extends StatelessWidget {
  final StoreBanner item;
  final int index;
  final int totalItems;
  final VoidCallback? onTap;

  const BannerFloatingLogoWidget({super.key, required this.item, required this.index, required this.totalItems, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: item.status == 1 ? onTap : null,
      child: Stack(children: [_buildMainImage(), if (item.status != 1) _buildStatusOverlay(), if (_hasValidLogo() && item.status == 1) _buildBrandNameChip()]),
    );
  }

  Widget _buildMainImage() {
    return Container(
      height: 180,
      width: 350,
      margin: EdgeInsets.only(left: index == 0 ? 24 : 16, right: index == totalItems - 1 ? 24 : 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppCorner.radius8),
        child: AppImage.network(item.coverPhoto ?? '', width: 350, height: 180, fit: BoxFit.cover),
      ),
    );
  }

  Widget _buildStatusOverlay() {
    return StatusOverlayWidget(item: item, index: index, totalItems: totalItems, height: 180, width: 350);
  }

  Widget _buildBrandNameChip() {
    return Positioned(
      top: 16,
      left: 0,
      right: 0,
      child: Center(child: BrandNameChipWidget(item: item)),
    );
  }

  bool _hasValidLogo() => item.logo?.trim().isNotEmpty == true;
}
