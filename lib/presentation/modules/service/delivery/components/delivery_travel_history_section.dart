import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';

class TravelHistory {
  TravelHistory({required this.title, required this.desc, required this.date, required this.time, required this.color});
  final String title;
  final String desc;
  final String date;
  final String time;
  final Color color;
}

class TravelHistorySection extends StatelessWidget {
  const TravelHistorySection({required this.travelData, super.key});
  final List<TravelHistory> travelData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 16.h),
      decoration: BoxDecoration(
        color: AppColors.stateBaseWhite,
        boxShadow: [BoxShadow(color: AppColors.alphaGrey10, blurRadius: 24, offset: const Offset(0, 2))],
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        children: [
          // Grabber
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h),
            child: Container(
              width: 48,
              height: 4,
              decoration: BoxDecoration(color: AppColors.stateGreyLow300, borderRadius: BorderRadius.circular(99)),
            ),
          ),
          // Label
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Travel history',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: AppColors.textBaseGrey950),
                  ),
                ),
                Icon(Icons.keyboard_arrow_up_rounded, color: AppColors.textBaseGrey950),
              ],
            ),
          ),
          // History List
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: List.generate(travelData.length, (i) {
                final entry = travelData[i];
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  child: Row(
                    children: [
                      // Left
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              entry.title,
                              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: entry.color),
                            ),
                            Text(entry.desc, style: TextStyle(fontSize: 12, color: AppColors.textGreyDefault500)),
                          ],
                        ),
                      ),
                      // Right
                      SizedBox(
                        width: 80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              entry.date,
                              style: TextStyle(fontWeight: i == 0 ? FontWeight.w500 : FontWeight.w400, fontSize: 14, color: i == 0 ? AppColors.stateBrandDefault500 : AppColors.textBaseGrey950),
                            ),
                            Text(entry.time, style: TextStyle(fontSize: 12, color: AppColors.textGreyDefault500)),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
