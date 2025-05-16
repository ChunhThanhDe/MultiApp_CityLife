import 'package:flutter/material.dart';
import 'package:sixam_mart_user/base/base_screen.dart';

import 'account_controller.dart';

class AccountScreen extends BaseScreen<AccountController> {
  const AccountScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Center(
      child: Text('Account'),
    );
  }
}
