import 'package:flutter/material.dart';

/// A helper widget that wraps content in a SliverToBoxAdapter
/// This is useful for adding non-sliver widgets to CustomScrollView
class SliverBox extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget? child;

  const SliverBox({super.key, this.height, this.width, this.child});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(height: height, width: width, child: child),
    );
  }
}
