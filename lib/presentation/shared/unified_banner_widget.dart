import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';

enum BannerType {
  bannerFloatingLogo,
  brandLogoName,
  bannerDiscount,
  bannerSingleImage,
}

enum BannerStatus { available, unavailable, closed }

class BannerItem {
  final String title;
  final String? subtitle;
  final String imageUrl;
  final String? logoUrl;
  final VoidCallback onTap;
  final int? discount;
  final double? deliveryFee;
  final bool? isVerified;
  final String? time;
  final BannerStatus status;
  const BannerItem({
    required this.title,
    this.subtitle,
    required this.imageUrl,
    this.logoUrl,
    required this.onTap,
    this.discount,
    this.deliveryFee,
    this.isVerified,
    this.time,
    this.status = BannerStatus.available,
  });
}

class UnifiedBannerWidget extends StatelessWidget {
  final String sectionTitle;
  final List<BannerItem> items;
  final BannerType bannerType;
  final bool showArrowIcon;
  final VoidCallback? onTap;

  const UnifiedBannerWidget({
    super.key,
    required this.sectionTitle,
    required this.items,
    required this.bannerType,
    this.showArrowIcon = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          SizedBox(height: _getHeaderSpacing()),
          _buildList(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: showArrowIcon
          ? GestureDetector(
              onTap: onTap,
              behavior: HitTestBehavior.opaque,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(sectionTitle, style: AppTextStyles.typographyH9Medium),
                  Assets.icons.icRightArrowChevron.svg(width: 28, height: 28),
                ],
              ),
            )
          : Text(
              sectionTitle,
              style: AppTextStyles.typographyH9Medium.copyWith(
                color: AppColors.textGreyHighest950,
              ),
            ),
    );
  }

  double _getHeaderSpacing() {
    switch (bannerType) {
      case BannerType.bannerFloatingLogo:
        return 8;
      case BannerType.brandLogoName:
      case BannerType.bannerDiscount:
        return 12;
      case BannerType.bannerSingleImage:
        return 16;
    }
  }

  Widget _buildList() {
    return SizedBox(
      height: _getListHeight(),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) => _buildItem(index),
      ),
    );
  }

  double _getListHeight() {
    switch (bannerType) {
      case BannerType.brandLogoName:
        return 100;
      case BannerType.bannerFloatingLogo:
        return 180;
      case BannerType.bannerDiscount:
        return 200;
      case BannerType.bannerSingleImage:
        return 220;
    }
  }

  Widget _buildItem(int index) {
    switch (bannerType) {
      case BannerType.bannerFloatingLogo:
        return _buildBannerItem(index);
      case BannerType.brandLogoName:
        return _buildBrandItem(index);
      case BannerType.bannerDiscount:
        return _buildBrandDiscountItem(index);
      case BannerType.bannerSingleImage:
        return _buildTopOfferItem(index);
    }
  }

  Widget _buildBannerItem(int index) {
    final item = items[index];
    return GestureDetector(
      onTap: item.status == BannerStatus.available ? item.onTap : null,
      child: Stack(
        children: [
          Container(
            height: 180,
            width: 350,
            margin: EdgeInsets.only(
              left: index == 0 ? 24 : 16,
              right: index == items.length - 1 ? 24 : 0,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AppImageProvider.network(item.imageUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(AppCorner.radius8),
            ),
          ),
          // Status overlay (unavailable/closed)
          if (item.status != BannerStatus.available)
            Container(
              height: 180,
              width: 350,
              margin: EdgeInsets.only(
                left: index == 0 ? 24 : 16,
                right: index == items.length - 1 ? 24 : 0,
              ),
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.6),
                borderRadius: BorderRadius.circular(AppCorner.radius8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.2),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      item.status == BannerStatus.closed
                          ? Icons.nightlight_round
                          : Icons.lock,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    item.status == BannerStatus.closed
                        ? 'Closed'
                        : 'Currently Unavailable',
                    style: AppTextStyles.typographyH10Medium.copyWith(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          if (item.logoUrl != null && item.status == BannerStatus.available)
            Positioned(
              top: 16,
              left: 0,
              right: 0,
              child: Center(child: _buildBrandNameChip(item)),
            ),
        ],
      ),
    );
  }

  Widget _buildBrandNameChip(BannerItem item) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: ShapeDecoration(
        color: Colors.white.withValues(alpha: 0.8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        shadows: [
          BoxShadow(
            color: Color(0x3D000000),
            blurRadius: 32,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8,
        children: [
          if (item.logoUrl != null)
            ClipOval(
              child: AppImage.network(item.logoUrl!, width: 24, height: 24),
            ),
          Text(
            item.title,
            textAlign: TextAlign.center,
            style: AppTextStyles.typographyH11Medium.copyWith(
              color: AppColors.textGreyHighest950,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBrandItem(int index) {
    final item = items[index];
    return GestureDetector(
      onTap: item.status == BannerStatus.available ? item.onTap : null,
      child: Padding(
        padding: EdgeInsets.only(
          right: index == items.length - 1 ? 24 : 16,
          left: index == 0 ? 24 : 0,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipOval(
                  child: AppImage.network(
                    item.logoUrl ?? item.imageUrl,
                    width: 64,
                    height: 64,
                  ),
                ),
                // Status overlay (unavailable/closed)
                if (item.status != BannerStatus.available)
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.6),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      item.status == BannerStatus.closed
                          ? Icons.nightlight_round
                          : Icons.lock,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
              ],
            ),
            SizedBox(height: 4),
            Text(
              item.title,
              style: AppTextStyles.typographyH12Regular.copyWith(
                color: AppColors.textBrandDefault500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBrandDiscountItem(int index) {
    final item = items[index];
    return GestureDetector(
      onTap: item.status == BannerStatus.available ? item.onTap : null,
      child: Container(
        width: 223,
        margin: EdgeInsets.only(
          right: index == items.length - 1 ? 24 : 16,
          left: index == 0 ? 24 : 0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: AppImage.network(item.imageUrl),
                ),
                // Status overlay (unavailable/closed)
                if (item.status != BannerStatus.available)
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: 0.6),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.2),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              item.status == BannerStatus.closed
                                  ? Icons.nightlight_round
                                  : Icons.lock,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            item.status == BannerStatus.closed
                                ? 'Closed'
                                : 'Currently Unavailable',
                            style: AppTextStyles.typographyH11Medium.copyWith(
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                if (item.discount != null &&
                    item.status == BannerStatus.available)
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 2,
                      ),
                      decoration: ShapeDecoration(
                        color: AppColors.stateSuccessHigh700,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x19101214),
                            blurRadius: 16,
                            offset: Offset(0, 12),
                            spreadRadius: -6,
                          ),
                          BoxShadow(
                            color: Color(0x0C101214),
                            blurRadius: 4,
                            offset: Offset(0, 2),
                            spreadRadius: -2,
                          ),
                        ],
                      ),
                      child: Text(
                        '${item.discount}% Off',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.typographyH12Regular.copyWith(
                          color: AppColors.textBaseWhite,
                        ),
                      ),
                    ),
                  ),
                if (item.logoUrl != null &&
                    item.status == BannerStatus.available)
                  Positioned(
                    top: 8,
                    left: 8,
                    child: ClipOval(
                      child: AppImage.network(
                        item.logoUrl!,
                        width: 64,
                        height: 64,
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.title,
                  style: AppTextStyles.typographyH10Medium.copyWith(
                    color: AppColors.textGreyHighest950,
                  ),
                ),
                if (item.isVerified == true) Assets.icons.icVerified.svg(),
              ],
            ),
            if (item.time != null || item.deliveryFee != null)
              Row(
                spacing: 4,
                children: [
                  if (item.deliveryFee != null)
                    Text(
                      '\$${item.deliveryFee} Delivery fee',
                      style: AppTextStyles.typographyH12Regular.copyWith(
                        color: AppColors.textGreyHigh700,
                      ),
                    ),
                  if (item.time != null) ...[
                    Text(
                      '•',
                      style: AppTextStyles.typographyH12Regular.copyWith(
                        color: AppColors.textBrandDefault500,
                      ),
                    ),
                    Text(
                      item.time!,
                      style: AppTextStyles.typographyH12Regular.copyWith(
                        color: AppColors.textGreyHigh700,
                      ),
                    ),
                  ],
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopOfferItem(int index) {
    final item = items[index];
    return GestureDetector(
      onTap: item.status == BannerStatus.available ? item.onTap : null,
      child: Padding(
        padding: EdgeInsets.only(
          right: index == items.length - 1 ? 24 : 16,
          left: index == 0 ? 24 : 0,
        ),
        child: SizedBox(
          width: 175,
          height: 220,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: AppImage.network(
                  item.imageUrl,
                  width: 175,
                  height: 220,
                  fit: BoxFit.cover,
                ),
              ),
              // Status overlay (unavailable/closed)
              if (item.status != BannerStatus.available)
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.6),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.2),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            item.status == BannerStatus.closed
                                ? Icons.nightlight_round
                                : Icons.lock,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          item.status == BannerStatus.closed
                              ? 'Closed'
                              : 'Currently Unavailable',
                          style: AppTextStyles.typographyH11Medium.copyWith(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
