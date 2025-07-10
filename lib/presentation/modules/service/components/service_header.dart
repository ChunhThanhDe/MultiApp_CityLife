import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/domain/enums/service_type.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/modules/service/components/service_filter.dart';
import 'package:sixam_mart_user/presentation/modules/service/service_controller.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_text_field.dart';

class ServiceHeader extends GetView<ServiceController> {
  const ServiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: AppColors.stateBrandDefault500),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [SizedBox(height: 54), _buildTopBar(), SizedBox(height: 16), _buildSearchBar(context), SizedBox(height: 16), _buildDeliveryAddress(), SizedBox(height: 16)],
            ),
          ),
          SizedBox(height: 16),
          _buildCategories(),
        ],
      ),
    );
  }

  Widget _buildTopBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(controller.currentServiceType.value?.name ?? '', style: AppTextStyles.typographyH9Medium.copyWith(color: AppColors.textBaseWhite)),
            Assets.icons.icBell.svg(width: 24, height: 24, colorFilter: ColorFilter.mode(AppColors.textBaseWhite, BlendMode.srcIn)),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: AppTextField(
        borderRadius: 24,
        isRequired: false,
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        prefixIcon: Padding(padding: const EdgeInsets.all(12), child: Assets.icons.icSearch.svg()),
        suffixIcon: GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              builder: (context) {
                return ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                  child: FractionallySizedBox(
                    heightFactor: 0.75, // Chỉ chiếm 75% chiều cao
                    child: const FilterScreen(),
                  ),
                );
              },
            );
          },
          child: Padding(padding: const EdgeInsets.all(15), child: Assets.icons.icFilter.svg()),
        ),
      ),
    );
  }

  Widget _buildDeliveryAddress() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Assets.icons.icCar.svg(width: 16, height: 16, colorFilter: ColorFilter.mode(AppColors.textBaseWhite, BlendMode.srcIn)),
          SizedBox(width: 8),
          Text('Deliver', style: AppTextStyles.typographyH11Medium.copyWith(color: AppColors.textBaseWhite)),
          SizedBox(width: 8),
          Container(
            width: 4,
            height: 4,
            decoration: BoxDecoration(color: AppColors.textBaseWhite, shape: BoxShape.circle),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text('2216 N 10th Street, CA 92243', style: AppTextStyles.typographyH12Regular.copyWith(color: AppColors.textBaseWhite)),
          ),
          Icon(Icons.keyboard_arrow_down, color: AppColors.textBaseWhite, size: 20),
        ],
      ),
    );
  }

  Widget _buildCategories() {
    return Obx(() {
      final categories = controller.categories;
      if (categories.isEmpty) {
        return SizedBox.shrink();
      }

      return SizedBox(
        height: 86,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final category = categories[index];
            return Padding(
              padding: EdgeInsets.only(right: index == categories.length - 1 ? 24 : 16, left: index == 0 ? 24 : 0),
              child: GestureDetector(
                onTap: () {
                  // Navigate to category page
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      Center(
                        child: category.image.isNotEmpty
                            ? Image.network(
                                category.image,
                                width: 40,
                                height: 40,
                                errorBuilder: (context, error, stackTrace) =>
                                    Image.asset(controller.getCategoryImageAsset(category, controller.currentServiceType.value ?? ServiceType.food), width: 40, height: 40),
                              )
                            : Image.asset(controller.getCategoryImageAsset(category, controller.currentServiceType.value ?? ServiceType.food), width: 40, height: 40),
                      ),
                      SizedBox(height: 8),
                      Text(category.name, style: AppTextStyles.typographyH12Regular, textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      );
    });
  }
}
