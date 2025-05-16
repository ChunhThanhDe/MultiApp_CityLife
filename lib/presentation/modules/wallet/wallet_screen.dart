import 'package:flutter/material.dart';
import 'package:sixam_mart_user/base/base_screen.dart';

import 'wallet_controller.dart';

class WalletScreen extends BaseScreen<WalletController> {
  const WalletScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Center(
      child: Text('Wallet'),
    );
  }
}
