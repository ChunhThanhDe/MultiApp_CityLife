import 'package:flutter/material.dart';

class TrackingStep {

  TrackingStep({required this.label, this.isFilled = false, this.isTick = false, this.isCurrent = false});
  final String label;
  final bool isFilled;
  final bool isTick;
  final bool isCurrent;
}

class TrackingProgress extends StatelessWidget {

  const TrackingProgress({required this.steps, required this.progressPercent, required this.leftDate, required this.leftPlace, required this.rightDate, required this.rightPlace, super.key});
  final List<TrackingStep> steps;
  final double progressPercent;
  final String leftDate;
  final String leftPlace;
  final String rightDate;
  final String rightPlace;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 32, 24, 16),
      child: Column(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              final stepCount = steps.length;
              final totalWidth = constraints.maxWidth;
              final usableWidth = totalWidth - 34; // trừ hai đầu mỗi đầu 17 (bán kính 17 = 34/2), 34 là width của step, giúp các step không bị sát mép
              // Vị trí các bước (tính center của mỗi step)
              final List<double> positions = List.generate(stepCount, (i) => 17 + usableWidth * (i / (stepCount - 1)));

              return SizedBox(
                width: totalWidth,
                height: 34,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Line background
                    Positioned(
                      left: positions.first,
                      right: totalWidth - positions.last,
                      top: 13,
                      child: Container(
                        height: 8,
                        decoration: BoxDecoration(color: const Color(0xFFE8EBEE), borderRadius: BorderRadius.circular(6)),
                      ),
                    ),
                    // Line progress (phần đã đi qua)
                    Positioned(
                      left: positions.first,
                      right: totalWidth - positions[progressStepIndex(steps)],
                      top: 13,
                      child: Container(
                        height: 8,
                        decoration: BoxDecoration(color: const Color(0xFF5856D7), borderRadius: BorderRadius.circular(6)),
                      ),
                    ),
                    // Steps
                    ...List.generate(steps.length, (i) {
                      return Positioned(
                        left: positions[i] - 17, // căn giữa step (step rộng 34)
                        top: 0,
                        child: _progressStep(isFilled: steps[i].isFilled, isTick: steps[i].isTick, isCurrent: steps[i].isCurrent),
                      );
                    }),
                  ],
                ),
              );
            },
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(leftDate, style: const TextStyle(fontSize: 12, color: Color(0xFF4A5763))),
                    Text(
                      leftPlace,
                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF161A1D)),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(rightDate, style: const TextStyle(fontSize: 12, color: Color(0xFF4A5763))),
                    Text(
                      rightPlace,
                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF161A1D)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Tìm index bước hiện tại (để tính progress)
  int progressStepIndex(List<TrackingStep> steps) {
    int lastFilled = 0;
    for (int i = 0; i < steps.length; i++) {
      if (steps[i].isFilled || steps[i].isCurrent) lastFilled = i;
    }
    return lastFilled;
  }

  Widget _progressStep({bool isFilled = false, bool isTick = false, bool isCurrent = false}) {
    return Container(
      width: 34,
      height: 34,
      decoration: const BoxDecoration(color: Colors.transparent),
      alignment: Alignment.center,
      child: Container(
        width: 22.7,
        height: 22.7,
        decoration: BoxDecoration(
          color: isFilled ? (isCurrent ? Colors.white : const Color(0xFF5856D7)) : Colors.white,
          border: Border.all(color: isFilled ? const Color(0xFF5856D7) : const Color(0xFF93A1AE), width: 1.4),
          boxShadow: isCurrent ? [const BoxShadow(color: Color(0x145856D7), blurRadius: 4, spreadRadius: 1)] : null,
          borderRadius: BorderRadius.circular(11.3),
        ),
        child: isTick
            ? const Center(child: Icon(Icons.check, color: Colors.white, size: 14))
            : isCurrent
            ? Center(
                child: Container(
                  width: 8.5,
                  height: 8.5,
                  decoration: BoxDecoration(color: const Color(0xFF5856D7), borderRadius: BorderRadius.circular(8.5)),
                ),
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
