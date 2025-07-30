import 'package:flutter/material.dart';

class SliverBox extends StatelessWidget {
  const SliverBox({super.key, this.height, this.width, this.child});
  final double? height;
  final double? width;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(height: height, width: width, child: child),
    );
  }
}
