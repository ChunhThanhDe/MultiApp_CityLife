import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/domain/models/response/get_stores_response.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';
import 'package:sixam_mart_user/presentation/shared/utils/banner_data_utils.dart';

class UnifiedBannerWidget extends StatelessWidget {
  final BannerSection section;
  
  const UnifiedBannerWidget({super.key, required this.section});

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
      child: section.showArrowIcon
          ? GestureDetector(
              onTap: section.onTapTitle,
              behavior: HitTestBehavior.opaque,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(section.title, style: AppTextStyles.typographyH9Medium),
                  Assets.icons.icRightArrowChevron.svg(width: 28, height: 28),
                ],
              ),
            )
          : Text(
              section.title, 
              style: AppTextStyles.typographyH9Medium.copyWith(
                color: AppColors.textGreyHighest950,
              ),
            ),
    );
  }

  double _getHeaderSpacing() {
    switch (section.bannerType) {
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
      height: _calculateDynamicHeight(),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: section.items.length,
        itemBuilder: (context, index) => _buildItem(index),
      ),
    );
  }

  /// Tính toán height động dựa trên content thực tế
  double _calculateDynamicHeight() {
    switch (section.bannerType) {
      case BannerType.brandLogoName:
        return _calculateBrandLogoNameHeight();
      case BannerType.bannerFloatingLogo:
        return 180; // Fixed height cho banner floating logo
      case BannerType.bannerDiscount:
        return _calculateBannerDiscountHeight();
      case BannerType.bannerSingleImage:
        return 220; // Fixed height cho single image
    }
  }

  /// Tính height cho brand logo name dựa trên content
  double _calculateBrandLogoNameHeight() {
    const double logoSize = 64;
    const double spacing = 4;
    const double textHeight = 32; // Ước tính cho 2 dòng text
    return logoSize + spacing + textHeight;
  }

  /// Tính height cho banner discount dựa trên content
  double _calculateBannerDiscountHeight() {
    const double imageHeight = 120;
    const double spacing = 8;
    const double titleHeight = 40; // Ước tính cho 2 dòng title
    
    // Kiểm tra xem có delivery info không
    final hasDeliveryInfo = section.items.any((item) => 
      _isNotEmpty(item.deliveryTime) || _hasValidDeliveryFee(item.deliveryFee)
    );
    
    const double deliveryInfoHeight = 16;
    return imageHeight + spacing + titleHeight + (hasDeliveryInfo ? deliveryInfoHeight : 0);
  }

  /// Helper methods để kiểm tra null/empty
  bool _isNotEmpty(String? value) => value != null && value.trim().isNotEmpty;
  
  bool _hasValidDeliveryFee(double? fee) => fee != null && fee > 0;
  
  bool _hasValidRating(double? rating) => rating != null && rating > 0;

  Widget _buildItem(int index) {
    switch (section.bannerType) {
      case BannerType.bannerFloatingLogo:
        return _buildBannerFloatingLogo(index);
      case BannerType.brandLogoName:
        return _buildBannerBrandLogoName(index);
      case BannerType.bannerDiscount:
        return _buildBannerDiscount(index);
      case BannerType.bannerSingleImage:
        return _buildBannerSingleImage(index);
    }
  }

  Widget _buildBannerFloatingLogo(int index) {
    final item = section.items[index];
    return GestureDetector(
      onTap: item.status == 1 ? section.onTapItem : null,
      child: Stack(
        children: [
          Container(
            height: 180,
            width: 350,
            margin: EdgeInsets.only(
              left: index == 0 ? 24 : 16, 
              right: index == section.items.length - 1 ? 24 : 0,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppCorner.radius8),
              child: AppImage.network(
                item.coverPhoto ?? '', 
                width: 350, 
                height: 180, 
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Status overlay (unavailable/closed)
          if (item.status != 1) _buildStatusOverlay(index, 180, 350),
          // Brand name chip - chỉ hiển thị khi có logo và status = 1
          if (_isNotEmpty(item.logo) && item.status == 1)
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

  Widget _buildStatusOverlay(int index, double height, double width) {
    final item = section.items[index];
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(
        left: index == 0 ? 24 : 16, 
        right: index == section.items.length - 1 ? 24 : 0,
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
              item.status == 0 ? Icons.nightlight_round : Icons.lock, 
              color: Colors.white, 
              size: height > 180 ? 24 : 20,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            item.status == 0 ? 'Closed' : 'Currently Unavailable',
            style: AppTextStyles.typographyH10Medium.copyWith(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildBrandNameChip(StoreBanner item) {
    // Chỉ hiển thị chip khi có ít nhất logo hoặc name
    if (!_isNotEmpty(item.logo) && !_isNotEmpty(item.name)) {
      return const SizedBox.shrink();
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: ShapeDecoration(
        color: Colors.white.withValues(alpha: 0.8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        shadows: const [
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
          // Chỉ hiển thị logo khi có
          if (_isNotEmpty(item.logo))
            ClipOval(
              child: AppImage.network(item.logo!, width: 24, height: 24),
            ),
          // Chỉ hiển thị name khi có
          if (_isNotEmpty(item.name))
            Flexible(
              child: Text(
                item.name!,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.typographyH11Medium.copyWith(
                  color: AppColors.textGreyHighest950,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildBannerBrandLogoName(int index) {
    final item = section.items[index];
    
    // Không hiển thị item nếu không có logo, coverPhoto và name
    if (!_isNotEmpty(item.logo) && 
        !_isNotEmpty(item.coverPhoto) && 
        !_isNotEmpty(item.name)) {
      return const SizedBox.shrink();
    }

    return GestureDetector(
      onTap: item.status == 1 ? section.onTapItem : null,
      child: Container(
        width: 80,
        margin: EdgeInsets.only(
          right: index == section.items.length - 1 ? 24 : 16, 
          left: index == 0 ? 24 : 0,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                // Hiển thị logo hoặc coverPhoto (ưu tiên logo)
                ClipOval(
                  child: AppImage.network(
                    item.logo ?? item.coverPhoto ?? '', 
                    width: 64, 
                    height: 64,
                  ),
                ),
                // Status overlay (unavailable/closed)
                if (item.status != 1)
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.6), 
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      item.status == 0 ? Icons.nightlight_round : Icons.lock, 
                      color: Colors.white, 
                      size: 20,
                    ),
                  ),
              ],
            ),
            // Chỉ hiển thị name khi có
            if (_isNotEmpty(item.name)) ...[
              const SizedBox(height: 4),
              Text(
                item.name!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: AppTextStyles.typographyH12Regular.copyWith(
                  color: AppColors.textBrandDefault500,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildBannerDiscount(int index) {
    final item = section.items[index];
    
    return GestureDetector(
      onTap: item.status == 1 ? section.onTapItem : null,
      child: Container(
        width: 223,
        margin: EdgeInsets.only(
          right: index == section.items.length - 1 ? 24 : 16, 
          left: index == 0 ? 24 : 0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: AppImage.network(
                    item.coverPhoto ?? '', 
                    width: 223, 
                    height: 120, 
                    fit: BoxFit.cover,
                  ),
                ),
                // Status overlay (unavailable/closed)
                if (item.status != 1)
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
                              item.status == 0 ? Icons.nightlight_round : Icons.lock, 
                              color: Colors.white, 
                              size: 20,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            item.status == 0 ? 'Closed' : 'Currently Unavailable',
                            style: AppTextStyles.typographyH11Medium.copyWith(
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                // Discount badge - chỉ hiển thị khi có deliveryFee và status = 1
                if (_hasValidDeliveryFee(item.deliveryFee) && item.status == 1)
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                      decoration: ShapeDecoration(
                        color: AppColors.stateSuccessHigh700,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        shadows: const [
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
                        '${item.deliveryFee!.toInt()}% Off',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.typographyH12Regular.copyWith(
                          color: AppColors.textBaseWhite,
                        ),
                      ),
                    ),
                  ),
                // Logo - chỉ hiển thị khi có logo và status = 1
                if (_isNotEmpty(item.logo) && item.status == 1) 
                  Positioned(
                    top: 8, 
                    left: 8, 
                    child: ClipOval(
                      child: AppImage.network(item.logo!, width: 64, height: 64),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name - chỉ hiển thị khi có
                if (_isNotEmpty(item.name))
                  Expanded(
                    child: Text(
                      item.name!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.typographyH10Medium.copyWith(
                        color: AppColors.textGreyHighest950,
                      ),
                    ),
                  ),
                // Verified badge - chỉ hiển thị khi rating > 4.0
                if (_hasValidRating(item.rating) && item.rating! > 4.0) 
                  Padding(
                    padding: const EdgeInsets.only(left: 8), 
                    child: Assets.icons.icVerified.svg(),
                  ),
              ],
            ),
            // Delivery info - chỉ hiển thị khi có thông tin
            if (_hasValidDeliveryFee(item.deliveryFee) || _isNotEmpty(item.deliveryTime))
              _buildDeliveryInfo(item),
          ],
        ),
      ),
    );
  }

  Widget _buildDeliveryInfo(StoreBanner item) {
    final List<Widget> infoWidgets = [];
    
    // Delivery fee
    if (_hasValidDeliveryFee(item.deliveryFee)) {
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
    if (_isNotEmpty(item.deliveryTime)) {
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

  Widget _buildBannerSingleImage(int index) {
    final item = section.items[index];
    
    return GestureDetector(
      onTap: item.status == 1 ? section.onTapItem : null,
      child: Padding(
        padding: EdgeInsets.only(
          right: index == section.items.length - 1 ? 24 : 16, 
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
                  item.coverPhoto ?? item.image ?? '', 
                  width: 175, 
                  height: 220, 
                  fit: BoxFit.cover,
                ),
              ),
              // Status overlay (unavailable/closed) - sử dụng helper method chung
              if (item.status != 1) 
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
                            item.status == 0 ? Icons.nightlight_round : Icons.lock, 
                            color: Colors.white, 
                            size: 20,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          item.status == 0 ? 'Closed' : 'Currently Unavailable',
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
