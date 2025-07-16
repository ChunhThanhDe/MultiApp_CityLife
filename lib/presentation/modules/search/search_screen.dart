import 'package:flutter/material.dart' hide SearchController;
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
      leadingWidth: 0,
      leading: SizedBox.shrink(),
      title: Hero(
        tag: 'search_bar',
        flightShuttleBuilder: (BuildContext flightContext, Animation<double> animation, HeroFlightDirection flightDirection, BuildContext fromHeroContext, BuildContext toHeroContext) {
          return AnimatedBuilder(
            animation: CurvedAnimation(parent: animation, curve: Curves.easeInOutCubic),
            builder: (context, child) {
              return Material(
                color: Colors.transparent,
                child: Container(
                  height: 48,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: AppColors.stateGreyLowestHover100, width: 1),
                  ),
                  child: Text('Search...', style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.textGreyDefault500)),
                ),
              );
            },
          );
        },
        child: Material(
          color: Colors.transparent,
          child: AppTextField(
            borderRadius: 24,
            isRequired: false,
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            prefixIcon: Padding(padding: const EdgeInsets.all(12), child: Assets.icons.icSearch.svg()),
            hintText: 'Search...',
            focusNode: controller.focusNode,
            controller: controller.textController,
            autofocus: true,
          ),
        ),
      ),
    );
  }

  @override
  Widget buildScreen(BuildContext context) {
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
