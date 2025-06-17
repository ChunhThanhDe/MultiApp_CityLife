import 'package:flutter/material.dart';

class DeliveryStatusCard extends StatelessWidget {
  final Map<String, dynamic>? delivery;

  const DeliveryStatusCard({super.key, required this.delivery});

  @override
  Widget build(BuildContext context) {
    if (delivery == null) return SizedBox.shrink();
    TextStyle inter(double size, [FontWeight? w, Color? c]) => TextStyle(fontSize: size, fontWeight: w, color: c);

    final stepStatus = List<bool>.from(delivery?['stepStatus'] ?? [true, true, false, false]);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xFFEFEFFB), borderRadius: BorderRadius.circular(8)),
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ID Number", style: inter(12, FontWeight.w400, Color(0xFF4A5763))),
                  Text(delivery?["code"] ?? "", style: inter(20, FontWeight.w500, Color(0xFF161A1D))),
                ],
              ),
              Text(delivery?["status"] ?? "", style: inter(12, FontWeight.w500, Color(0xFF5856D7))),
            ],
          ),
          SizedBox(height: 12),
          _ProgressSteps(stepStatus: stepStatus),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(delivery?["date"] ?? "", style: inter(12, FontWeight.w400, Color(0xFF4A5763))),
                  Text("Mississauga, ON CA", style: inter(14, FontWeight.w500, Color(0xFF161A1D))),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Jan 28, 2025", style: inter(12, FontWeight.w400, Color(0xFF4A5763))),
                  Text("WINNIPEG, MB CA", style: inter(14, FontWeight.w500, Color(0xFF161A1D))),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ProgressSteps extends StatelessWidget {
  final List<bool> stepStatus;

  const _ProgressSteps({required this.stepStatus});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Gray Line (background)
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 8,
                decoration: BoxDecoration(color: Color(0xFFDEDEF7), borderRadius: BorderRadius.circular(6)),
              ),
            ),
          ),
          // Blue Line (dynamic width depending on stepStatus)
          Positioned(
            left: 0,
            right: MediaQuery.of(context).size.width * (1 - (stepStatus.where((s) => s).length / stepStatus.length)),
            child: Container(
              height: 8,
              decoration: BoxDecoration(color: Color(0xFF5856D7), borderRadius: BorderRadius.circular(6)),
            ),
          ),
          // Step Circles
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: List.generate(stepStatus.length, (i) => _stepCircle(stepStatus[i]))),
        ],
      ),
    );
  }

  Widget _stepCircle(bool checked) {
    return Container(
      width: 22,
      height: 22,
      decoration: BoxDecoration(
        color: checked ? Color(0xFF5856D7) : Colors.white,
        border: Border.all(color: Color(0xFF5856D7), width: 2.5),
        shape: BoxShape.circle,
      ),
      child: checked ? Icon(Icons.check, color: Colors.white, size: 14) : null,
    );
  }
}
