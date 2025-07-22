import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/presentation/modules/delivery/box_delivery/box_delivery_controller.dart';
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
                  color: isSelected ? Colors.white : const Color(0xFFF7F8F9),
                  border: Border.all(color: isSelected ? const Color(0xFF5856D7) : Colors.transparent, width: 1.5),
                  boxShadow: isSelected ? [const BoxShadow(color: Color(0x335856D7), blurRadius: 4)] : [],
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
                              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Color(0xFF161A1D)),
                            ),
                            const SizedBox(height: 4),
                            Text(controller.boxData[i]['desc']!, style: const TextStyle(fontSize: 12, color: Color(0xFF4A5763), height: 1.4)),
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
