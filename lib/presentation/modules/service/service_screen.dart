import 'package:flutter/material.dart';
import 'package:sixam_mart_user/base/base_screen.dart';

import 'service_controller.dart';

class ServiceScreen extends BaseScreen<ServiceController> {
  const ServiceScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Center(
      child: Text('Service'),
    );
  }
}
