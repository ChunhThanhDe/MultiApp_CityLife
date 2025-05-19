import 'package:get/get_navigation/src/routes/get_route.dart';
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
import 'package:sixam_mart_user/presentation/modules/root/root_bindings.dart';
import 'package:sixam_mart_user/presentation/modules/root/root_screen.dart';
import 'package:sixam_mart_user/presentation/modules/wallet/add_fund/add_fund_binding.dart';
import 'package:sixam_mart_user/presentation/modules/wallet/add_fund/add_fund_screen.dart';
import 'package:sixam_mart_user/presentation/modules/wallet/view_receipt/view_receipt_binding.dart';
import 'package:sixam_mart_user/presentation/modules/wallet/view_receipt/view_receipt_screen.dart';

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
  ];
}
