import 'package:flutter/material.dart';

class TravelHistory {
  final String title;
  final String desc;
  final String date;
  final String time;
  final Color color;

  TravelHistory({required this.title, required this.desc, required this.date, required this.time, required this.color});
}

class TravelHistorySection extends StatelessWidget {
  final List<TravelHistory> travelData;

  const TravelHistorySection({super.key, required this.travelData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Color(0x1A101214), blurRadius: 24, offset: Offset(0, 2))],
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        children: [
          // Grabber
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Container(
              width: 48,
              height: 4,
              decoration: BoxDecoration(color: Color(0xFFE8EBEE), borderRadius: BorderRadius.circular(99)),
            ),
          ),
          // Label
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Travel history",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Color(0xFF161A1D)),
                  ),
                ),
                Icon(Icons.keyboard_arrow_up_rounded, color: Color(0xFF161A1D)),
              ],
            ),
          ),
          // History List
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: List.generate(travelData.length, (i) {
                final entry = travelData[i];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
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
                            Text(entry.desc, style: TextStyle(fontSize: 12, color: Color(0xFF4A5763))),
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
                              style: TextStyle(fontWeight: i == 0 ? FontWeight.w500 : FontWeight.w400, fontSize: 14, color: i == 0 ? Color(0xFF5856D7) : Color(0xFF161A1D)),
                            ),
                            Text(entry.time, style: TextStyle(fontSize: 12, color: Color(0xFF4A5763))),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
