import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:sixam_mart_user/presentation/modules/account/account/account_binding.dart';
import 'package:sixam_mart_user/presentation/modules/account/account/account_screen.dart';
import 'package:sixam_mart_user/presentation/modules/account/account_manage/account_manage_binding.dart';
import 'package:sixam_mart_user/presentation/modules/account/account_manage/account_manage_screen.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/sign_in/sign_in_binding.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/sign_in/sign_in_screen.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/sign_up/sign_up_binding.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/sign_up/sign_up_screen.dart';
import 'package:sixam_mart_user/presentation/modules/root/root_bindings.dart';
import 'package:sixam_mart_user/presentation/modules/root/root_screen.dart';

part 'app_routes.dart';

class AppPages {
  static String initial = AppRoutes.account;

  static final appRoutes = [
    GetPage(
      name: AppRoutes.root,
      page: () => const RootScreen(),
      binding: RootBindings(),
    ),
    GetPage(
      name: AppRoutes.signIn,
      page: () => const SignInScreen(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: AppRoutes.signUp,
      page: () => const SignUpScreen(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: AppRoutes.account,
      page: () => const AccountScreen(),
      binding: AccountBinding(),
    ),
    GetPage(
      name: AppRoutes.accountManage,
      page: () => const AccountManageScreen(),
      binding: AccountManageBinding(),
    ),
    GetPage(
      name: AppRoutes.account2StepVerification,
      page: () => const AccountManageScreen(),
      binding: AccountManageBinding(),
    ),
    GetPage(
      name: AppRoutes.accountPassword,
      page: () => const AccountManageScreen(),
      binding: AccountManageBinding(),
    ),
    GetPage(
      name: AppRoutes.accountSecurity,
      page: () => const AccountManageScreen(),
      binding: AccountManageBinding(),
    ),
    GetPage(
      name: AppRoutes.accountPasskey,
      page: () => const AccountManageScreen(),
      binding: AccountManageBinding(),
    ),
  ];
}
