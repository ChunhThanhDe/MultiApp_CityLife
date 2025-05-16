import 'package:flutter/material.dart';

class StatusBarAppBar extends StatelessWidget {
  final String title;
  const StatusBarAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        border: Border(
          bottom: BorderSide(color: Color(0xFFE8EBEE), width: 1),
        ),
      ),
      child: Column(
        children: [
          // Status bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('9:41', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF161A1D))),
                Row(
                  children: [
                    Icon(Icons.signal_cellular_alt, size: 16, color: Color(0xFF161A1D)),
                    SizedBox(width: 2),
                    Icon(Icons.wifi, size: 16, color: Color(0xFF161A1D)),
                    SizedBox(width: 2),
                    Icon(Icons.battery_full, size: 18, color: Color(0xFF161A1D)),
                  ],
                ),
              ],
            ),
          ),
          // App Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              children: [
                InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    width: 36,
                    height: 36,
                    child: Icon(Icons.arrow_back_ios_new_rounded, color: Color(0xFF161A1D)),
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF161A1D),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Home Indicator at bottom
class HomeIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 134,
      height: 5,
      margin: EdgeInsets.only(top: 8, bottom: 8),
      decoration: BoxDecoration(
        color: Color(0xFF161A1D),
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
