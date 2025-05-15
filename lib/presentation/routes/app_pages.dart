import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:sixam_mart_user/presentation/modules/root/root_bindings.dart';
import 'package:sixam_mart_user/presentation/modules/root/root_screen.dart';

part 'app_routes.dart';

class AppPages {
  static String initial = AppRoutes.root;

  static final appRoutes = [
    GetPage(
      name: AppRoutes.root,
      page: () => const RootScreen(),
      binding: RootBindings(),
    ),
  ];
}
