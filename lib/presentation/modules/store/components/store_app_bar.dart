import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/domain/models/response/get_store_info_response.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/store/components/store_filter_bottom_sheet.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_main/store_controller.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bottom_sheet.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';

class StoreAppBar extends StatelessWidget {
  const StoreAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StoreController>(
      builder: (controller) {
        final store = controller.storeInfo.value;
        if (store == null) return const SliverToBoxAdapter(child: SizedBox());

        return SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.only(top: 54.h, left: 24.w, right: 24.w, bottom: 24.h),
            decoration: BoxDecoration(
              image: DecorationImage(image: CachedNetworkImageProvider(store.coverPhotoUrl ?? ''), fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    _circularButton(Icon(Icons.arrow_back, color: AppColors.textGreyHighest950), () => Get.back()),
                    const Spacer(),
                    _circularButton(Assets.icons.icSearch.svg(width: 24.w, height: 24.w, colorFilter: ColorFilter.mode(AppColors.textGreyHighest950, BlendMode.srcIn)), _onTapFilter),
                    SizedBox(width: 12.w),
                    _circularButton(Assets.icons.icStore.svg(width: 24.w, height: 24.w, colorFilter: ColorFilter.mode(AppColors.textGreyHighest950, BlendMode.srcIn)), _onTapStore),
                  ],
                ),
                SizedBox(height: 88.h),
                _buildStoreHeader(),
              ],
            ),
          ),
        );
      },
    );
  }

  void _onTapStore() {
    final storeResponse = Get.find<StoreController>().generalResponse.value;
    if (storeResponse == null) return;

    final store = storeResponse.store; // store: StoreInfo

    showAppBottomSheet(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: '${store.name}\n', style: AppTextStyles.typographyH8SemiBold),
                  if (store.comment != null && store.comment!.isNotEmpty) TextSpan(text: store.comment, style: AppTextStyles.typographyH11Regular),
                  if (store.comment == null || store.comment!.isEmpty) TextSpan(text: 'No description.', style: AppTextStyles.typographyH11Regular),
                ],
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          _buildActionButton(),
          _buildStoreInfo(store),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }

  void _onTapFilter() async {
    StoreFilterBottomSheet.show();
  }

  Widget _circularButton(Widget icon, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(6.w),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        ),
        child: icon,
      ),
    );
  }

  Widget _buildStoreHeader() {
    return GetBuilder<StoreController>(
      builder: (controller) {
        final store = controller.storeInfo.value;
        if (store == null) return const SizedBox();

        return ClipRRect(
          borderRadius: BorderRadius.circular(12.r),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Container(
              padding: EdgeInsets.all(16.w),
              color: AppColors.stateBaseWhite.withValues(alpha: 100),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipOval(
                    child: AppImage.network(store.logoUrl ?? '', width: 56.w, height: 56.w),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(store.name ?? '', style: AppTextStyles.typographyH7SemiBold),
                        SizedBox(height: 4.h),
                        Row(
                          children: [
                            Icon(Icons.star, size: 16.w, color: Colors.black),
                            SizedBox(width: 4.w),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(text: '${store.rating} ', style: AppTextStyles.typographyH12SemiBold),
                                  TextSpan(text: '(${store.reviewCount} ratings)', style: AppTextStyles.typographyH12Regular),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  _AnimatedHeartButton(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildActionButton() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: _actionButton(
                  text: 'Add to favorites',
                  icon: Assets.icons.icHeartOutlined.svg(width: 24.w, height: 24.w, colorFilter: const ColorFilter.mode(Colors.red, BlendMode.srcIn)),
                  backgroundColor: AppColors.stateDangerLowest50,
                  borderColor: AppColors.stateDangerLowestHover100,
                  textColor: AppColors.stateDangerHigh700,
                  onPressed: () {},
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: _actionButton(
                  text: 'Search the store',
                  icon: Assets.icons.icSearch.svg(width: 24.w, height: 24.w, colorFilter: const ColorFilter.mode(Colors.blue, BlendMode.srcIn)),
                  backgroundColor: AppColors.stateBrandLowest50,
                  borderColor: AppColors.stateBrandLowestHover100,
                  textColor: AppColors.stateBrandHigh700,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              Expanded(
                child: _actionButton(
                  text: 'Share a friend',
                  icon: Assets.icons.icSync.svg(width: 24.w, height: 24.w, colorFilter: const ColorFilter.mode(Colors.green, BlendMode.srcIn)),
                  backgroundColor: AppColors.stateSuccessLowest50,
                  borderColor: AppColors.stateSuccessLowestHover100,
                  textColor: AppColors.stateSuccessHigh700,
                  onPressed: () {},
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: _actionButton(
                  text: 'Contact',
                  icon: Icon(Icons.phone, size: 24.w, color: Colors.blue),
                  backgroundColor: AppColors.stateInformationLowest50,
                  borderColor: AppColors.stateInformationLowestHover100,
                  textColor: AppColors.stateInformationHigh700,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _actionButton({required String text, required Widget icon, required Color backgroundColor, required Color borderColor, required Color textColor, required VoidCallback onPressed}) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: ShapeDecoration(
          color: backgroundColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: borderColor),
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                text,
                style: AppTextStyles.typographyH12SemiBold.copyWith(color: textColor),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(width: 8.w),
            icon,
          ],
        ),
      ),
    );
  }

  Widget _buildStoreInfo(StoreInfo store) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      child: Column(
        children: [
          _buildInfoRow(
            icon: Assets.icons.icLocation.svg(colorFilter: ColorFilter.mode(AppColors.textGreyHigh700, BlendMode.srcIn)),
            title: store.address,
            // subtitle: '', // Nếu muốn tách tỉnh/thành thì cần parse address thêm
            trailing: Assets.icons.icSync.svg(colorFilter: ColorFilter.mode(AppColors.textGreyHigh700, BlendMode.srcIn)),
          ),
          SizedBox(height: 16.h),
          _buildInfoRow(
            icon: Assets.icons.icCar.svg(colorFilter: ColorFilter.mode(AppColors.textGreyHigh700, BlendMode.srcIn)),
            title: 'Delivery Fee',
            trailing: Text('\$${store.services.deliveryFee}', style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHigh700)),
          ),
          SizedBox(height: 16.h),
          _buildInfoRow(
            icon: Assets.icons.icClock.svg(colorFilter: ColorFilter.mode(AppColors.textGreyHigh700, BlendMode.srcIn)),
            title: 'Delivery Time',
            trailing: Text(store.services.deliveryTime, style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHigh700)),
          ),
          // Nếu có thông tin giờ mở cửa thì truyền từ API (ở đây không thấy trường openingTime, có thể cần bổ sung)
          // SizedBox(height: 16.h),
          // _buildInfoRow(
          //   icon: Assets.icons.icLineDirection.svg(colorFilter: ColorFilter.mode(AppColors.textGreyHigh700, BlendMode.srcIn)),
          //   title: store.openingTime ?? 'Today 7:30 AM - 10:30 PM',
          //   trailing: Icon(Icons.keyboard_arrow_down, size: 24, color: AppColors.textGreyHigh700),
          // ),
          SizedBox(height: 16.h),
          _buildInfoRow(
            icon: Assets.icons.icStar.svg(colorFilter: ColorFilter.mode(AppColors.textGreyHigh700, BlendMode.srcIn)),
            title: '${store.rating} (${store.reviewCount} ratings)',
            trailing: Icon(Icons.keyboard_arrow_right, size: 24, color: AppColors.textGreyDefault500),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow({required Widget icon, required String title, String? subtitle, Widget? trailing}) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(8.w),
          decoration: BoxDecoration(color: AppColors.stateBaseWhite.withValues(alpha: 200), borderRadius: BorderRadius.circular(8.r)),
          child: icon,
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: AppTextStyles.typographyH11Medium),
              if (subtitle != null) ...[SizedBox(height: 2.h), Text(subtitle, style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textGreyHigh700))],
            ],
          ),
        ),
        if (trailing != null) trailing,
      ],
    );
  }
}

class _AnimatedHeartButton extends StatefulWidget {
  @override
  _AnimatedHeartButtonState createState() => _AnimatedHeartButtonState();
}

class _AnimatedHeartButtonState extends State<_AnimatedHeartButton> with SingleTickerProviderStateMixin {
  bool isFavorite = false;
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(duration: const Duration(milliseconds: 400), vsync: this);

    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.15).animate(CurvedAnimation(parent: _animationController, curve: Curves.easeInOutBack));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });

    _animationController.forward().then((_) {
      Future.delayed(const Duration(milliseconds: 100), () {
        _animationController.reverse();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleFavorite,
      child: AnimatedBuilder(
        animation: _scaleAnimation,
        builder: (context, child) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
              child: isFavorite
                  ? Assets.icons.icHeartFilled.svg(key: const ValueKey('filled'), width: 24.w, height: 24.w, colorFilter: ColorFilter.mode(AppColors.stateBrandDefault500, BlendMode.srcIn))
                  : Assets.icons.icHeartOutlined.svg(key: const ValueKey('outlined'), width: 24.w, height: 24.w, colorFilter: ColorFilter.mode(AppColors.textGreyHighest950, BlendMode.srcIn)),
            ),
          );
        },
      ),
    );
  }
}
