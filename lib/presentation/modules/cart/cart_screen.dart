import 'package:flutter/material.dart';
import 'package:sixam_mart_user/base/base_screen.dart';

import 'cart_controller.dart';

class CartScreen extends BaseScreen<CartController> {
  const CartScreen({super.key});

  @override
  Widget buildScreen(BuildContext context) {
    return Center(
      child: Text('Cart'),
    );
  }
}
