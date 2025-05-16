import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/constants/api_const.dart';

class AppOverlayNavigator {
  static GlobalKey<NavigatorState> get navigatorKey => ApiConstant.alice.getNavigatorKey()!;
}
