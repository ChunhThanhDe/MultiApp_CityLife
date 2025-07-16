import 'package:flutter/material.dart' hide SearchController;
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_text_field.dart';

import 'search_controller.dart';

class SearchScreen extends BaseScreen<SearchController> {
  const SearchScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(onPressed: () => Get.back(), icon: Assets.icons.icBackArrow.svg()),
      title: Hero(
        tag: 'search_bar',
        child: Material(
          color: Colors.transparent,
          child: AppTextField(
            borderRadius: 24,
            isRequired: false,
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            prefixIcon: Padding(padding: const EdgeInsets.all(12), child: Assets.icons.icSearch.svg()),
            hintText: 'Search...',
            focusNode: controller.focusNode,
          ),
        ),
      ),
    );
  }

  @override
  Widget buildScreen(BuildContext context) {
    // Focus vào text field khi màn hình mở
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.focusNode.requestFocus();
    });

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text('Search Results', style: AppTextStyles.typographyH7Bold),
            SizedBox(height: 20),
            Expanded(
              child: Center(child: Text('Search functionality will be implemented here.', style: AppTextStyles.typographyH9Regular)),
            ),
          ],
        ),
      ),
    );
  }
}
