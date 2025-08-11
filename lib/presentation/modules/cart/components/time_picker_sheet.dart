import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';

class TimePickerSheet extends StatefulWidget {
  const TimePickerSheet({super.key});

  @override
  State<TimePickerSheet> createState() => _TimePickerSheetState();
}

class _TimePickerSheetState extends State<TimePickerSheet> {
  int selectedDayIndex = 2; // Today + 2 (giống ví dụ)
  int selectedTimeSlot = 2; // slot đang chọn

  late DateTime today;
  late List<DateTime> days;

  final List<String> timeSlots = ['8:00 AM - 9:00 AM', '9:00 AM - 10:00 AM', '10:00 AM - 11:00 AM', '11:00 AM - 12:00 PM', '2:00 PM - 3:00 PM', '3:00 PM - 4:00 PM'];

  @override
  void initState() {
    super.initState();
    today = DateTime.now();
    // Sinh 7 ngày, bắt đầu từ hôm nay
    days = List.generate(7, (i) => today.add(Duration(days: i)));
  }

  @override
  Widget build(BuildContext context) {
    final DateTime selectedDay = days[selectedDayIndex];

    return Container(
      decoration: BoxDecoration(
        color: AppTheme.theme.backgroundSurfacePrimaryWhite,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Grabber
          Padding(
            padding: EdgeInsets.only(top: 10.h, bottom: 6.h),
            child: Center(
              child: Container(
                width: 48,
                height: 4,
                decoration: BoxDecoration(color: AppTheme.theme.stateGreyLowestHover100, borderRadius: BorderRadius.circular(99)),
              ),
            ),
          ),
          // Title + arrows
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 2.h),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios_new, size: 22, color: AppTheme.theme.textGreyHigh700),
                  onPressed: selectedDayIndex > 0 ? () => setState(() => selectedDayIndex--) : null,
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      DateFormat.yMMMMd().format(selectedDay),
                      style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 18, color: AppTheme.theme.textGreyHighest950),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios, size: 22, color: AppTheme.theme.textGreyHigh700),
                  onPressed: selectedDayIndex < days.length - 1 ? () => setState(() => selectedDayIndex++) : null,
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          // List ngày
          SizedBox(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 4.h),
              itemCount: days.length,
              itemBuilder: (context, idx) {
                final d = days[idx];
                final selected = idx == selectedDayIndex;
                return GestureDetector(
                  onTap: () => setState(() => selectedDayIndex = idx),
                  child: Container(
                    margin: EdgeInsets.only(right: 12.w),
                    width: 60,
                    height: 81,
                    decoration: BoxDecoration(color: selected ? AppTheme.theme.stateBrandDefault500 : AppTheme.theme.backgroundSurfaceTertiaryGrey50, borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          DateFormat.E().format(d), // Mon, Tue,...
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: selected ? AppTheme.theme.textBaseWhite : (idx == 0 ? AppTheme.theme.stateBrandDefault500 : AppTheme.theme.textGreyDefault500),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          DateFormat.d().format(d), // 20, 21,...
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            color: selected ? AppTheme.theme.textBaseWhite : (idx == 0 ? AppTheme.theme.stateBrandDefault500 : AppTheme.theme.textGreyHighest950),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 16),
          // Divider
          Divider(height: 1, thickness: 1, color: AppTheme.theme.stateGreyLowestHover100),
          const SizedBox(height: 12),
          // Slot giờ
          Expanded(
            child: Container(
              constraints: const BoxConstraints(maxHeight: 300),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: timeSlots.length,
                  separatorBuilder: (context, index) => const SizedBox(height: 8),
                  itemBuilder: (context, idx) {
                    final selected = idx == selectedTimeSlot;
                    return InkWell(
                      borderRadius: BorderRadius.circular(32),
                      onTap: () => setState(() => selectedTimeSlot = idx),
                      child: Container(
                        height: 48,
                        padding: EdgeInsets.symmetric(horizontal: 18.w),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(32), color: selected ? AppTheme.theme.stateBrandLowest50 : AppTheme.theme.backgroundSurfacePrimaryWhite),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Between: ${timeSlots[idx]}',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: selected ? AppTheme.theme.stateBrandLow200 : (idx == 0 ? AppTheme.theme.textGreyDefault500 : AppTheme.theme.textGreyHigh700),
                                ),
                              ),
                            ),
                            if (selected) Icon(Icons.check, color: AppTheme.theme.stateBrandDefault500, size: 20),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Save button
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 14.h),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(AppTheme.theme.stateBrandDefault500),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(32))),
                    padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 12.h)),
                    elevation: WidgetStateProperty.all(0),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Save',
                    style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 16, color: AppTheme.theme.textBaseWhite),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
