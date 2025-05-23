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
import 'package:sixam_mart_user/presentation/modules/address/address_details/address_details_binding.dart';
import 'package:sixam_mart_user/presentation/modules/address/address_details/address_details_screen.dart';
import 'package:sixam_mart_user/presentation/modules/address/address_screen.dart';
import 'package:sixam_mart_user/presentation/modules/address/confirm_address/confirm_address_binding.dart';
import 'package:sixam_mart_user/presentation/modules/address/confirm_address/confirm_address_screen.dart';
import 'package:sixam_mart_user/presentation/modules/address/search_address/search_address_binding.dart';
import 'package:sixam_mart_user/presentation/modules/address/search_address/search_address_screen.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/sign_in/sign_in_binding.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/sign_in/sign_in_screen.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/sign_up/sign_up_binding.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/sign_up/sign_up_screen.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/verification/verification_binding.dart';
import 'package:sixam_mart_user/presentation/modules/authentication/verification/verification_screen.dart';
import 'package:sixam_mart_user/presentation/modules/delivery/home_delivery/home_delivery_binding.dart';
import 'package:sixam_mart_user/presentation/modules/delivery/home_delivery/home_delivery_screen.dart';
import 'package:sixam_mart_user/presentation/modules/favorites/favorites_binding.dart';
import 'package:sixam_mart_user/presentation/modules/favorites/favorities_screen.dart';
import 'package:sixam_mart_user/presentation/modules/payment/payment/payment_binding.dart';
import 'package:sixam_mart_user/presentation/modules/payment/payment/payment_screen.dart';
import 'package:sixam_mart_user/presentation/modules/payment/scan_card/scan_card_binding.dart';
import 'package:sixam_mart_user/presentation/modules/payment/scan_card/scan_card_screen.dart';
import 'package:sixam_mart_user/presentation/modules/root/root_bindings.dart';
import 'package:sixam_mart_user/presentation/modules/root/root_screen.dart';
import 'package:sixam_mart_user/presentation/modules/wallet/add_fund/add_fund_binding.dart';
import 'package:sixam_mart_user/presentation/modules/wallet/add_fund/add_fund_screen.dart';
import 'package:sixam_mart_user/presentation/modules/wallet/view_receipt/view_receipt_binding.dart';
import 'package:sixam_mart_user/presentation/modules/wallet/view_receipt/view_receipt_screen.dart';

part 'app_routes.dart';

class AppPages {
  static String initial = AppRoutes.homeDelivery;

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
      name: AppRoutes.verification,
      page: () => const VerificationScreen(),
      binding: VerificationBinding(),
    ),
    GetPage(
      name: AppRoutes.addFund,
      page: () => const AddFundScreen(),
      binding: AddFundBinding(),
    ),
    GetPage(
      name: AppRoutes.viewReceipt,
      page: () => const ViewReceiptScreen(),
      binding: ViewReceiptBinding(),
    ),
    GetPage(
      name: AppRoutes.address,
      page: () => const AddressScreen(),
      children: [
        GetPage(
          name: AppRoutes.searchAddress,
          page: () => const SearchAddressScreen(),
          binding: SearchAddressBinding(),
        ),
        GetPage(
          name: AppRoutes.addressDetails,
          page: () => const AddressDetailsScreen(),
          binding: AddressDetailsBinding(),
        ),
        GetPage(
          name: AppRoutes.confirmAddress,
          page: () => const ConfirmAddressScreen(),
          binding: ConfirmAddressBinding(),
        ),
      ],
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
    GetPage(
      name: AppRoutes.favorites,
      page: () => const FavoritesScreen(),
      binding: FavoritesBinding(),
    ),
    GetPage(
      name: AppRoutes.payment,
      page: () => const PaymentScreen(),
      binding: PaymentBinding(),
    ),
    GetPage(
      name: AppRoutes.paymentScan,
      page: () => const ScanCardScreen(),
      binding: ScanCardBinding(),
    ),
    GetPage(
      name: AppRoutes.homeDelivery,
      page: () => const HomeDeliveryScreen(),
      binding: HomeDeliveryBinding(),
    ),
  ];
}
