import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/localization/locale_keys.g.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/modules/root/root_controller.dart';

class RootScreen extends BaseScreen<RootController> {
  const RootScreen({super.key});

  @override
  bool get wrapWithSafeArea => true;

  @override
  Widget buildScreen(BuildContext context) {
    return Center(
      child: Text(tr(LocaleKeys.root_title)),
    );
  }
}
