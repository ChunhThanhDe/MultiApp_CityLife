import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';

class PackageInfo {

  PackageInfo({required this.trackingId, required this.from, required this.deliveryStatus, required this.custom, required this.to, required this.estimated});
  final String trackingId;
  final String from;
  final String deliveryStatus;
  final String custom;
  final String to;
  final String estimated;
}

class PackageInformationCard extends StatelessWidget {
  const PackageInformationCard({required this.info, super.key});
  final PackageInfo info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 4, bottom: 8),
      child: Column(
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Package Information',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: AppColors.textBaseGrey950),
                  ),
                ),
                Text(
                  'Save',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: AppColors.textBrandDefault500),
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
                      _InfoField(label: 'Tracking ID', value: info.trackingId),
                      const SizedBox(height: 16),
                      _InfoField(label: 'From', value: info.from),
                      const SizedBox(height: 16),
                      _InfoField(label: 'Delivery Status', value: info.deliveryStatus),
                    ],
                  ),
                ),
                // Right
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _InfoField(label: 'Custom', value: info.custom),
                      const SizedBox(height: 16),
                      _InfoField(label: 'To', value: info.to),
                      const SizedBox(height: 16),
                      _InfoField(label: 'Estimated', value: info.estimated),
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
  const _InfoField({required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontSize: 12, color: AppColors.textGreyDefault500)),
        const SizedBox(height: 2),
        Text(
          value,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: AppColors.textBaseGrey950),
        ),
      ],
    );
  }
}
