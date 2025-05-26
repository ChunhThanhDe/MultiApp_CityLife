import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/shared/app_bar_basic.dart';

import 'track_delivery_controller.dart';

class TrackDeliveryScreen extends BaseScreen<TrackDeliveryController> {
  const TrackDeliveryScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return BasicAppBar(
      title: 'Tracking',
      onBack: () => Get.back(),
    );
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Package Information
                _PackageInformationCard(),
                // Progress & Stepper
                _TrackingProgress(),
                // Travel History
                _TravelHistorySection(),
                // Bottom Home Indicator
                SizedBox(height: 32),
                Center(
                  child: Container(
                    width: 134,
                    height: 5,
                    margin: EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      color: Color(0xFF161A1D),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _PackageInformationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 252,
      padding: EdgeInsets.only(top: 4, bottom: 8),
      child: Column(
        children: [
          // Header with Save
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Package Information",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0xFF161A1D),
                    ),
                  ),
                ),
                Text(
                  "Save",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF5856D7),
                  ),
                ),
              ],
            ),
          ),
          // Info block
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _InfoField(label: "Tracking ID", value: "#D923-Y903"),
                      SizedBox(height: 16),
                      _InfoField(label: "From", value: "Mississauga, ON CA"),
                      SizedBox(height: 16),
                      _InfoField(label: "Delivery Status", value: "On the way"),
                    ],
                  ),
                ),
                // Right
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _InfoField(label: "Custom", value: "Abdulkadir Ali"),
                      SizedBox(height: 16),
                      _InfoField(label: "To", value: "WINNIPEG, MB CA"),
                      SizedBox(height: 16),
                      _InfoField(label: "Estimated", value: "January 21, 2025"),
                    ],
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

class _InfoField extends StatelessWidget {
  final String label;
  final String value;
  const _InfoField({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontSize: 12, color: Color(0xFF4A5763))),
        SizedBox(height: 2),
        Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Color(0xFF161A1D),
          ),
        ),
      ],
    );
  }
}

class _TrackingProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Có thể build widget động theo tiến độ (đây là UI cứng cho giống Figma)
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 32, 24, 16),
      child: Column(
        children: [
          // Stepper line
          SizedBox(
            width: double.infinity,
            height: 34,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Line background
                Positioned(
                  left: 0,
                  right: 0,
                  top: 13,
                  child: Container(
                    height: 8,
                    decoration: BoxDecoration(
                      color: Color(0xFFE8EBEE),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
                // Line progress
                Positioned(
                  left: 0,
                  right: MediaQuery.of(context).size.width * 0.33,
                  top: 13,
                  child: Container(
                    height: 8,
                    decoration: BoxDecoration(
                      color: Color(0xFF5856D7),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
                // Steps (có 4 cột tròn)
                _progressStep(left: 0, isFilled: true, isTick: true),
                _progressStep(left: MediaQuery.of(context).size.width * 0.33 - 20, isFilled: true, isTick: true),
                _progressStep(left: MediaQuery.of(context).size.width * 0.66 - 20, isFilled: true, isTick: false, isCurrent: true),
                _progressStep(right: 0, isFilled: false),
              ],
            ),
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Jan 12, 2025", style: TextStyle(fontSize: 12, color: Color(0xFF4A5763))),
                    Text("Mississauga, ON CA", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF161A1D))),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Jan 28, 2025", style: TextStyle(fontSize: 12, color: Color(0xFF4A5763))),
                    Text("WINNIPEG, MB CA", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF161A1D))),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _progressStep({double? left, double? right, bool isFilled = false, bool isTick = false, bool isCurrent = false}) {
    return Positioned(
      left: left,
      right: right,
      child: Container(
        width: 34,
        height: 34,
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        alignment: Alignment.center,
        child: Container(
          width: 22.7,
          height: 22.7,
          decoration: BoxDecoration(
            color: isFilled ? (isCurrent ? Colors.white : Color(0xFF5856D7)) : Colors.white,
            border: Border.all(
              color: isFilled ? (isCurrent ? Color(0xFF5856D7) : Color(0xFF5856D7)) : Color(0xFF93A1AE),
              width: 1.4,
            ),
            boxShadow: isCurrent
                ? [
                    BoxShadow(
                      color: Color(0x145856D7),
                      blurRadius: 4,
                      spreadRadius: 1,
                    ),
                  ]
                : null,
            borderRadius: BorderRadius.circular(11.3),
          ),
          child: isTick
              ? Center(
                  child: Icon(Icons.check, color: Colors.white, size: 14),
                )
              : isCurrent
                  ? Center(
                      child: Container(
                        width: 8.5,
                        height: 8.5,
                        decoration: BoxDecoration(
                          color: Color(0xFF5856D7),
                          borderRadius: BorderRadius.circular(8.5),
                        ),
                      ),
                    )
                  : SizedBox.shrink(),
        ),
      ),
    );
  }
}

class _TravelHistorySection extends StatelessWidget {
  // Giả lập travel data
  final List<Map<String, String>> travelData = const [
    {'title': 'Out for delivery', 'desc': 'WINNIPEG, MB CA', 'date': '01-28-2025', 'time': '9:25 AM', 'color': '#5856D7'},
    {'title': 'On the way', 'desc': 'WINNIPEG, MB CA', 'date': '01-27-2025', 'time': '9:25 AM', 'color': '#161A1D'},
    {'title': 'On the way', 'desc': 'Mississauga, ON CA', 'date': '01-25-2025', 'time': '9:25 AM', 'color': '#161A1D'},
    {'title': 'Arrive at Sorting Center', 'desc': 'Mississauga, ON CA', 'date': '01-24-2025', 'time': '9:25 AM', 'color': '#161A1D'},
    {'title': 'Pick-up', 'desc': 'Mississauga, ON CA', 'date': '01-20-2025', 'time': '9:25 AM', 'color': '#161A1D'},
    {'title': 'Label Created', 'desc': 'Mississauga, ON CA', 'date': '01-20-2025', 'time': '9:25 AM', 'color': '#161A1D'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x1A101214),
            blurRadius: 24,
            offset: Offset(0, 2),
          ),
        ],
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
              decoration: BoxDecoration(
                color: Color(0xFFE8EBEE),
                borderRadius: BorderRadius.circular(99),
              ),
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
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0xFF161A1D),
                    ),
                  ),
                ),
                Icon(Icons.keyboard_arrow_up_rounded, color: Color(0xFF161A1D))
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
                              entry['title']!,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(int.parse("0xFF${entry['color']!.replaceAll('#', '')}")),
                              ),
                            ),
                            Text(
                              entry['desc']!,
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF4A5763),
                              ),
                            ),
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
                              entry['date']!,
                              style: TextStyle(
                                fontWeight: i == 0 ? FontWeight.w500 : FontWeight.w400,
                                fontSize: 14,
                                color: i == 0 ? Color(0xFF5856D7) : Color(0xFF161A1D),
                              ),
                            ),
                            Text(
                              entry['time']!,
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF4A5763),
                              ),
                            ),
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
