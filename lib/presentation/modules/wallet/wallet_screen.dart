import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/constants/app_text_styles.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/colors.gen.dart';

import 'wallet_controller.dart';

class WalletScreen extends BaseScreen<WalletController> {
  const WalletScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      title: Text('Wallet', style: AppTextStyle.s18w500.copyWith(color: AppColors.textGreyHighest950)),
    );
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Center(
      child: Text('Wallet'),
    );
  }
}
