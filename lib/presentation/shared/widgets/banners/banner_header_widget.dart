import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/shared/utils/banner_data_utils.dart';

class BannerHeaderWidget extends StatelessWidget {
  final BannerSection section;

  const BannerHeaderWidget({
    super.key,
    required this.section,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: section.showArrowIcon
          ? _buildHeaderWithArrow()
          : _buildSimpleHeader(),
    );
  }

  Widget _buildHeaderWithArrow() {
    return GestureDetector(
      onTap: section.onTapTitle,
      behavior: HitTestBehavior.opaque,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            section.title,
            style: AppTextStyles.typographyH9Medium,
          ),
          Assets.icons.icRightArrowChevron.svg(
            width: 28,
            height: 28,
          ),
        ],
      ),
    );
  }

  Widget _buildSimpleHeader() {
    return Text(
      section.title,
      style: AppTextStyles.typographyH9Medium.copyWith(
        color: AppColors.textGreyHighest950,
      ),
    );
  }
}