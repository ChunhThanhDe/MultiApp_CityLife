import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/domain/models/response/get_stores_response.dart';

class StatusOverlayWidget extends StatelessWidget {
  final StoreBanner item;
  final int index;
  final int totalItems;
  final double height;
  final double width;

  const StatusOverlayWidget({
    super.key,
    required this.item,
    required this.index,
    required this.totalItems,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(
        left: index == 0 ? 24 : 16,
        right: index == totalItems - 1 ? 24 : 0,
      ),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.6),
        borderRadius: BorderRadius.circular(AppCorner.radius8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildStatusIcon(),
          const SizedBox(height: 8),
          _buildStatusText(),
        ],
      ),
    );
  }

  Widget _buildStatusIcon() {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.2),
        shape: BoxShape.circle,
      ),
      child: Icon(
        item.status == 0 ? Icons.nightlight_round : Icons.lock,
        color: Colors.white,
        size: height > 180 ? 24 : 20,
      ),
    );
  }

  Widget _buildStatusText() {
    return Text(
      item.status == 0 ? 'Closed' : 'Currently Unavailable',
      style: AppTextStyles.typographyH10Medium.copyWith(color: Colors.white),
      textAlign: TextAlign.center,
    );
  }
}