import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
    DateTime selectedDay = days[selectedDayIndex];

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Grabber
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 6),
            child: Center(
              child: Container(
                width: 48,
                height: 4,
                decoration: BoxDecoration(color: Color(0xFFE8EBEE), borderRadius: BorderRadius.circular(99)),
              ),
            ),
          ),
          // Title + arrows
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios_new, size: 22, color: Colors.grey[700]),
                  onPressed: selectedDayIndex > 0 ? () => setState(() => selectedDayIndex--) : null,
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      DateFormat.yMMMMd().format(selectedDay),
                      style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 18, color: Color(0xFF161A1D)),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios, size: 22, color: Colors.grey[700]),
                  onPressed: selectedDayIndex < days.length - 1 ? () => setState(() => selectedDayIndex++) : null,
                ),
              ],
            ),
          ),
          SizedBox(height: 12),
          // List ngày
          SizedBox(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
              itemCount: days.length,
              itemBuilder: (context, idx) {
                final d = days[idx];
                final selected = idx == selectedDayIndex;
                return GestureDetector(
                  onTap: () => setState(() => selectedDayIndex = idx),
                  child: Container(
                    margin: const EdgeInsets.only(right: 12),
                    width: 60,
                    height: 81,
                    decoration: BoxDecoration(color: selected ? Color(0xFF5856D7) : Color(0xFFF7F8F9), borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          DateFormat.E().format(d), // Mon, Tue,...
                          style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 16, color: selected ? Colors.white : (idx == 0 ? Color(0xFF5856D7) : Color(0xFF798A9A))),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          DateFormat.d().format(d), // 20, 21,...
                          style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 24, color: selected ? Colors.white : (idx == 0 ? Color(0xFF5856D7) : Color(0xFF161A1D))),
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
          const Divider(height: 1, thickness: 1, color: Color(0xFFE8EBEE)),
          const SizedBox(height: 12),
          // Slot giờ
          Expanded(
            child: Container(
              constraints: const BoxConstraints(maxHeight: 300),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: timeSlots.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 8),
                  itemBuilder: (context, idx) {
                    final selected = idx == selectedTimeSlot;
                    return InkWell(
                      borderRadius: BorderRadius.circular(32),
                      onTap: () => setState(() => selectedTimeSlot = idx),
                      child: Container(
                        height: 48,
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(32), color: selected ? const Color(0x119998E7) : Colors.transparent),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Between: ${timeSlots[idx]}',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: selected ? const Color(0xFF9998E7) : (idx == 0 ? const Color(0xFF798A9A) : const Color(0xFF4A5763)),
                                ),
                              ),
                            ),
                            if (selected) const Icon(Icons.check, color: Color(0xFF5856D7), size: 20),
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
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Color(0xFF5856D7)),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(32))),
                    padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 12)),
                    elevation: WidgetStateProperty.all(0),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Save',
                    style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 16, color: Colors.white),
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
