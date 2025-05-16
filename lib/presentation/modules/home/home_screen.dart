import 'package:flutter/material.dart';
import 'package:sixam_mart_user/base/base_screen.dart';

import 'home_controller.dart';

class HomeScreen extends BaseScreen<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Center(
      child: Text('Home'),
    );
  }
}
