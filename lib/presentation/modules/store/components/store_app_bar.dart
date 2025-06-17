import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/store/components/store_filter_bottom_sheet.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bottom_sheet.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';
import 'package:sixam_mart_user/theme.dart';

class StoreAppBar extends StatelessWidget {
  const StoreAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.only(top: 54.h, left: 24.w, right: 24.w, bottom: 24.h),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AppImageProvider.network('https://images.unsplash.com/photo-1559056199-641a0ac8b55e?w=800'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                _circularButton(Icon(Icons.arrow_back, color: AppColors.textGreyHighest950), () => Get.back()),
                Spacer(),
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
  }

  _onTapStore() {
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
                TextSpan(text: 'Starbucks®\n', style: AppTextStyles.typographyH8SemiBold),
                TextSpan(
                  text:
                      'Our story begins in 1971 along the cobblestone streets of Seattle’s historic Pike Place Market. It was here where Starbucks opened its first store, offering fresh-roasted coffee beans, tea and spices from around the world for our customers to take home. Our name was inspired by the classic tale, “Moby-Dick,” evoking the seafaring tradition of the early coffee traders.',
                  style: AppTextStyles.typographyH11Regular,
                ),
              ],
            ),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        _buildActionButton(),
        _buildStoreInfo(),
        SizedBox(height: 16.h),
      ],
    ));
  }

  void _onTapFilter() {
    StoreFilterBottomSheet.show();
  }

  Widget _circularButton(Widget icon, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(6.w),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        child: icon,
      ),
    );
  }

  Widget _buildStoreHeader() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.r),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
        child: Container(
          padding: EdgeInsets.all(16.w),
          color: AppColors.stateBaseWhite.withValues(alpha: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipOval(
                    child: AppImage.network(
                      'https://upload.wikimedia.org/wikipedia/vi/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/250px-Starbucks_Corporation_Logo_2011.svg.png',
                      width: 56.w,
                      height: 56.w,
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Starbucks®', style: AppTextStyles.typographyH7SemiBold),
                        SizedBox(height: 4.h),
                        Row(
                          children: [
                            Icon(Icons.star, size: 16.w, color: Colors.black),
                            SizedBox(width: 4.w),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(text: '4.2 ', style: AppTextStyles.typographyH12SemiBold),
                                  TextSpan(text: '(300+ ratings)', style: AppTextStyles.typographyH12Regular),
                                  TextSpan(text: ' • ', style: AppTextStyles.typographyH12Regular),
                                  TextSpan(text: '2.5 Mile', style: AppTextStyles.typographyH12Regular),
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
            ],
          ),
        ),
      ),
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
                  icon: Assets.icons.icHeartOutlined.svg(
                    width: 24.w,
                    height: 24.w,
                    colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
                  ),
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
                  icon: Assets.icons.icSearch.svg(
                    width: 24.w,
                    height: 24.w,
                    colorFilter: ColorFilter.mode(Colors.blue, BlendMode.srcIn),
                  ),
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
                  icon: Assets.icons.icSync.svg(
                    width: 24.w,
                    height: 24.w,
                    colorFilter: ColorFilter.mode(Colors.green, BlendMode.srcIn),
                  ),
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
                  icon: Icon(
                    Icons.phone,
                    size: 24.w,
                    color: Colors.blue,
                  ),
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

  Widget _actionButton({
    required String text,
    required Widget icon,
    required Color backgroundColor,
    required Color borderColor,
    required Color textColor,
    required VoidCallback onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: ShapeDecoration(
          color: backgroundColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: borderColor,
            ),
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

  Widget _buildStoreInfo() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      child: Column(
        children: [
          _buildInfoRow(
            icon: Assets.icons.icLocation.svg(colorFilter: ColorFilter.mode(AppColors.textGreyHigh700, BlendMode.srcIn)),
            title: '2216 N 10th Street',
            subtitle: 'El Centro, CA 92243',
            trailing: Assets.icons.icSync.svg(colorFilter: ColorFilter.mode(AppColors.textGreyHigh700, BlendMode.srcIn)),
          ),
          SizedBox(height: 16.h),
          _buildInfoRow(
            icon: Assets.icons.icCar.svg(colorFilter: ColorFilter.mode(AppColors.textGreyHigh700, BlendMode.srcIn)),
            title: 'Delivery Fee',
            trailing: Text('\$6.99', style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHigh700)),
          ),
          SizedBox(height: 16.h),
          _buildInfoRow(
            icon: Assets.icons.icClock.svg(colorFilter: ColorFilter.mode(AppColors.textGreyHigh700, BlendMode.srcIn)),
            title: 'Delivery Time',
            trailing: Text('20-25 min', style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyHigh700)),
          ),
          SizedBox(height: 16.h),
          _buildInfoRow(
            icon: Assets.icons.icLineDirection.svg(colorFilter: ColorFilter.mode(AppColors.textGreyHigh700, BlendMode.srcIn)),
            title: 'Today 7:30 AM - 10:30 PM',
            trailing: Icon(Icons.keyboard_arrow_down, size: 24, color: AppColors.textGreyHigh700),
          ),
          SizedBox(height: 16.h),
          _buildInfoRow(
            icon: Assets.icons.icStar.svg(colorFilter: ColorFilter.mode(AppColors.textGreyHigh700, BlendMode.srcIn)),
            title: '4.2 (500+ ratings)',
            trailing: Icon(Icons.keyboard_arrow_right, size: 24, color: AppColors.textGreyDefault500),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow({
    required Widget icon,
    required String title,
    String? subtitle,
    Widget? trailing,
  }) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(8.w),
          decoration: BoxDecoration(
            color: AppColors.stateBaseWhite.withValues(alpha: 200),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: icon,
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyles.typographyH11Medium,
              ),
              if (subtitle != null) ...[
                SizedBox(height: 2.h),
                Text(
                  subtitle,
                  style: AppTextStyles.typographyH12Regular.copyWith(
                    color: AppColors.textGreyHigh700,
                  ),
                ),
              ],
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
    _animationController = AnimationController(
      duration: Duration(milliseconds: 400),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 1.15,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOutBack,
    ));
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
      Future.delayed(Duration(milliseconds: 100), () {
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
              duration: Duration(milliseconds: 200),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(
                  scale: animation,
                  child: child,
                );
              },
              child: isFavorite
                  ? Assets.icons.icHeartFilled.svg(
                      key: ValueKey('filled'),
                      width: 24.w,
                      height: 24.w,
                      colorFilter: ColorFilter.mode(
                        AppColors.stateBrandDefault500,
                        BlendMode.srcIn,
                      ),
                    )
                  : Assets.icons.icHeartOutlined.svg(
                      key: ValueKey('outlined'),
                      width: 24.w,
                      height: 24.w,
                      colorFilter: ColorFilter.mode(
                        AppColors.textGreyHighest950,
                        BlendMode.srcIn,
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }
}
