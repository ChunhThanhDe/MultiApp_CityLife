import 'package:flutter/material.dart';

class PackageInfo {
  final String trackingId;
  final String from;
  final String deliveryStatus;
  final String custom;
  final String to;
  final String estimated;

  PackageInfo({
    required this.trackingId,
    required this.from,
    required this.deliveryStatus,
    required this.custom,
    required this.to,
    required this.estimated,
  });
}

class PackageInformationCard extends StatelessWidget {
  final PackageInfo info;
  const PackageInformationCard({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 4, bottom: 8),
      child: Column(
        children: [
          // Header
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
                      _InfoField(label: "Tracking ID", value: info.trackingId),
                      SizedBox(height: 16),
                      _InfoField(label: "From", value: info.from),
                      SizedBox(height: 16),
                      _InfoField(label: "Delivery Status", value: info.deliveryStatus),
                    ],
                  ),
                ),
                // Right
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _InfoField(label: "Custom", value: info.custom),
                      SizedBox(height: 16),
                      _InfoField(label: "To", value: info.to),
                      SizedBox(height: 16),
                      _InfoField(label: "Estimated", value: info.estimated),
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
