import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/account/components/account_divider.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_bar_basic.dart';

import 'package:sixam_mart_user/presentation/modules/account/account_2_step_verification/account_2_step_verification_controller.dart';

class Account2StepVerificationScreen extends BaseScreen<Account2StepVerificationController> {
  const Account2StepVerificationScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return BasicAppBar(title: 'Security', onBack: () => Get.back());
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const SizedBox(height: 24),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Second steps',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color(0xFF161A1D)),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Make sure you can access your SpeedEats Account by keeping this information up to date and adding more sign-in options',
                      style: TextStyle(fontSize: 14, color: Color(0xFF4A5763), height: 1.42),
                    ),
                    SizedBox(height: 24),
                  ],
                ),
              ),
              // Cell items
              _CellItem(icon: Icons.sms, title: 'Text Message (SMS)', subtitle: '+1 (000) 000-0000', checked: true, onTap: () {}),
              const CustomDivider(),
              _CellItem(icon: Icons.email_outlined, title: 'Email', subtitle: 'kadir@lukit.com', checked: true, onTap: () {}),
              const CustomDivider(),
              _CellItem(icon: Icons.qr_code_2, title: 'Authenticator', subtitle: 'Add authenticator app', checked: false, showArrow: true, onTap: () {}),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ],
    );
  }
}

class _CellItem extends StatelessWidget {

  const _CellItem({required this.icon, required this.title, required this.subtitle, this.checked = false, this.showArrow = false, this.onTap});
  final IconData icon;
  final String title;
  final String subtitle;
  final bool checked;
  final bool showArrow;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
          child: Row(
            children: [
              Icon(icon, color: const Color(0xFF4A5763)),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF161A1D)),
                    ),
                    Text(subtitle, style: const TextStyle(fontSize: 12, color: Color(0xFF4A5763))),
                  ],
                ),
              ),
              if (checked) const Icon(Icons.check, color: Color(0xFF4A5763)) else if (showArrow) const Icon(Icons.chevron_right, color: Color(0xFF4A5763)),
            ],
          ),
        ),
      ),
    );
  }
}
