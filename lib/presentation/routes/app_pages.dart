import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:sixam_mart_user/presentation/modules/account/account/account_binding.dart';
import 'package:sixam_mart_user/presentation/modules/account/account/account_screen.dart';
import 'package:sixam_mart_user/presentation/modules/account/account_2_step_verification/account_2_step_verification_binding.dart';
import 'package:sixam_mart_user/presentation/modules/account/account_2_step_verification/account_2_step_verification_screen.dart';
import 'package:sixam_mart_user/presentation/modules/account/account_manage/account_manage_binding.dart';
import 'package:sixam_mart_user/presentation/modules/account/account_manage/account_manage_screen.dart';
import 'package:sixam_mart_user/presentation/modules/account/account_passkeys/account_passkeys_binding.dart';
import 'package:sixam_mart_user/presentation/modules/account/account_passkeys/account_passkeys_screen.dart';
import 'package:sixam_mart_user/presentation/modules/account/account_password/account_password_binding.dart';
import 'package:sixam_mart_user/presentation/modules/account/account_password/account_password_screen.dart';
import 'package:sixam_mart_user/presentation/modules/account/account_security/account_security_binding.dart';
import 'package:sixam_mart_user/presentation/modules/account/account_security/account_security_screen.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/sign_in/sign_in_binding.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/sign_in/sign_in_screen.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/sign_up/sign_up_binding.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/sign_up/sign_up_screen.dart';
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
      page: () => const Account2StepVerificationScreen(),
      binding: Account2StepVerificationBinding(),
    ),
    GetPage(
      name: AppRoutes.accountPassword,
      page: () => const AccountPasswordScreen(),
      binding: AccountPasswordBinding(),
    ),
    GetPage(
      name: AppRoutes.accountSecurity,
      page: () => const AccountSecurityScreen(),
      binding: AccountSecurityBinding(),
    ),
    GetPage(
      name: AppRoutes.accountPasskey,
      page: () => const AccountPasskeysScreen(),
      binding: AccountPasskeysBinding(),
    ),
  ];
}
