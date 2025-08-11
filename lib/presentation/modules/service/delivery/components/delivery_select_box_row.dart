import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/presentation/modules/service/delivery/box_delivery/box_delivery_controller.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_image.dart';

class SelectBoxRowWidget extends StatelessWidget {
  const SelectBoxRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<BoxDeliveryController>();
    return Obx(() {
      debugPrint('selectedBox: ${controller.selectedBox.value}');
      return SizedBox(
        height: 112,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: controller.boxData.length,
          separatorBuilder: (context, i) => const SizedBox(width: 16),
          itemBuilder: (context, i) {
            final isSelected = controller.selectedBox.value == i;
            return GestureDetector(
              onTap: () {
                debugPrint('Tapped box $i');
                controller.selectBox(i);
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 180),
                width: 223,
                height: 104,
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.stateBaseWhite : AppColors.stateGreyLowestHover100,
                  border: Border.all(color: isSelected ? AppColors.stateBrandDefault500 : Colors.transparent, width: 1.5),
                  boxShadow: isSelected ? [BoxShadow(color: AppColors.stateBrandDefault500.withValues(alpha: 0.2), blurRadius: 4)] : [],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 7,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              controller.boxData[i]['label']!,
                              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: AppColors.textBaseGrey950),
                            ),
                            const SizedBox(height: 4),
                            Text(controller.boxData[i]['desc']!, style: TextStyle(fontSize: 12, color: AppColors.textGreyDefault500, height: 1.4)),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: AppImage.asset(controller.boxData[i]['img']!, height: 72, fit: BoxFit.contain),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
    });
  }
}
