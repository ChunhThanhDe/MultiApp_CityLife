import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
import 'package:sixam_mart_user/presentation/modules/cart/cart_checkout/cart_checkout_binding.dart';
import 'package:sixam_mart_user/presentation/modules/cart/cart_checkout/cart_checkout_screen.dart';
import 'package:sixam_mart_user/presentation/modules/cart/cart_order/cart_order_binding.dart';
import 'package:sixam_mart_user/presentation/modules/cart/cart_order/cart_order_screen.dart';
import 'package:sixam_mart_user/presentation/modules/cart/cart_order_confirm/cart_order_confirm_binding.dart';
import 'package:sixam_mart_user/presentation/modules/cart/cart_order_confirm/cart_order_confirm_screen.dart';
import 'package:sixam_mart_user/presentation/modules/cart/view_cart/view_cart_binding.dart';
import 'package:sixam_mart_user/presentation/modules/cart/view_cart/view_cart_screen.dart';
import 'package:sixam_mart_user/presentation/modules/delivery/box_delivery/box_delivery_binding.dart';
import 'package:sixam_mart_user/presentation/modules/delivery/box_delivery/box_delivery_screen.dart';
import 'package:sixam_mart_user/presentation/modules/delivery/delivery_checkout/delivery_checkout_binding.dart';
import 'package:sixam_mart_user/presentation/modules/delivery/delivery_checkout/delivery_checkout_screen.dart';
import 'package:sixam_mart_user/presentation/modules/delivery/home_delivery/home_delivery_binding.dart';
import 'package:sixam_mart_user/presentation/modules/delivery/home_delivery/home_delivery_screen.dart';
import 'package:sixam_mart_user/presentation/modules/delivery/track_delivery/track_delivery_binding.dart';
import 'package:sixam_mart_user/presentation/modules/delivery/track_delivery/track_delivery_screen.dart';
import 'package:sixam_mart_user/presentation/modules/delivery/tracking_delivery/tracking_delivery_binding.dart';
import 'package:sixam_mart_user/presentation/modules/delivery/tracking_delivery/tracking_delivery_screen.dart';
import 'package:sixam_mart_user/presentation/modules/favorites/favorites_binding.dart';
import 'package:sixam_mart_user/presentation/modules/favorites/favorities_screen.dart';
import 'package:sixam_mart_user/presentation/modules/onboarding/splash/splash_binding.dart';
import 'package:sixam_mart_user/presentation/modules/onboarding/splash/splash_screen.dart';
import 'package:sixam_mart_user/presentation/modules/onboarding/welcome/welcome_binding.dart';
import 'package:sixam_mart_user/presentation/modules/onboarding/welcome/welcome_screen.dart';
import 'package:sixam_mart_user/presentation/modules/payment/payment/payment_binding.dart';
import 'package:sixam_mart_user/presentation/modules/payment/payment/payment_screen.dart';
import 'package:sixam_mart_user/presentation/modules/payment/scan_card/scan_card_binding.dart';
import 'package:sixam_mart_user/presentation/modules/payment/scan_card/scan_card_screen.dart';
import 'package:sixam_mart_user/presentation/modules/root/root_bindings.dart';
import 'package:sixam_mart_user/presentation/modules/root/root_screen.dart';
import 'package:sixam_mart_user/presentation/modules/search/search_binding.dart';
import 'package:sixam_mart_user/presentation/modules/search/search_screen.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_main/store_binding.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_main/store_screen.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_product_detail/store_product_detail_binding.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_product_detail/store_product_detail_screen.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_products/store_products_binding.dart';
import 'package:sixam_mart_user/presentation/modules/store/store_products/store_products_screen.dart';
import 'package:sixam_mart_user/presentation/modules/wallet/add_fund/add_fund_binding.dart';
import 'package:sixam_mart_user/presentation/modules/wallet/add_fund/add_fund_screen.dart';
import 'package:sixam_mart_user/presentation/modules/wallet/view_receipt/view_receipt_binding.dart';
import 'package:sixam_mart_user/presentation/modules/wallet/view_receipt/view_receipt_screen.dart';
import 'package:sixam_mart_user/presentation/routes/auth_middleware.dart';

part 'app_routes.dart';

class AppPages {
  static String get initial => AppRoutes.splash;

  static final appRoutes = [
    GetPage(name: AppRoutes.splash, page: () => const SplashScreen(), binding: SplashBinding()),
    GetPage(name: AppRoutes.root, page: () => const RootScreen(), binding: RootBindings(), middlewares: [AuthMiddleware()]),
    GetPage(name: AppRoutes.signIn, page: () => const SignInScreen(), binding: SignInBinding(), middlewares: [AuthMiddleware()]),
    GetPage(name: AppRoutes.signUp, page: () => const SignUpScreen(), binding: SignUpBinding(), middlewares: [AuthMiddleware()]),
    GetPage(name: AppRoutes.verification, page: () => const VerificationScreen(), binding: VerificationBinding(), middlewares: [AuthMiddleware()]),
    GetPage(name: AppRoutes.addFund, page: () => const AddFundScreen(), binding: AddFundBinding(), middlewares: [AuthMiddleware()]),
    GetPage(name: AppRoutes.viewReceipt, page: () => const ViewReceiptScreen(), binding: ViewReceiptBinding(), middlewares: [AuthMiddleware()]),
    GetPage(
      name: AppRoutes.address,
      page: () => const AddressScreen(),
      middlewares: [AuthMiddleware()],
      children: [
        GetPage(name: AppRoutes.searchAddress, page: () => const SearchAddressScreen(), binding: SearchAddressBinding(), middlewares: [AuthMiddleware()]),
        GetPage(name: AppRoutes.addressDetails, page: () => const AddressDetailsScreen(), binding: AddressDetailsBinding(), middlewares: [AuthMiddleware()]),
        GetPage(name: AppRoutes.confirmAddress, page: () => const ConfirmAddressScreen(), binding: ConfirmAddressBinding(), middlewares: [AuthMiddleware()]),
      ],
    ),
    GetPage(name: AppRoutes.account, page: () => const AccountScreen(), binding: AccountBinding(), middlewares: [AuthMiddleware()]),
    GetPage(name: AppRoutes.accountManage, page: () => const AccountManageScreen(), binding: AccountManageBinding(), middlewares: [AuthMiddleware()]),
    GetPage(name: AppRoutes.account2StepVerification, page: () => const Account2StepVerificationScreen(), binding: Account2StepVerificationBinding(), middlewares: [AuthMiddleware()]),
    GetPage(name: AppRoutes.accountPassword, page: () => const AccountPasswordScreen(), binding: AccountPasswordBinding(), middlewares: [AuthMiddleware()]),
    GetPage(name: AppRoutes.accountSecurity, page: () => const AccountSecurityScreen(), binding: AccountSecurityBinding(), middlewares: [AuthMiddleware()]),
    GetPage(name: AppRoutes.accountPasskey, page: () => const AccountPasskeysScreen(), binding: AccountPasskeysBinding(), middlewares: [AuthMiddleware()]),
    GetPage(name: AppRoutes.favorites, page: () => const FavoritesScreen(), binding: FavoritesBinding(), middlewares: [AuthMiddleware()]),
    GetPage(
      name: AppRoutes.search,
      page: () => const SearchScreen(),
      binding: SearchBinding(),
      middlewares: [AuthMiddleware()],
      transition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    ),
    GetPage(name: AppRoutes.payment, page: () => const PaymentScreen(), binding: PaymentBinding(), middlewares: [AuthMiddleware()]),
    GetPage(name: AppRoutes.paymentScan, page: () => const ScanCardScreen(), binding: ScanCardBinding(), middlewares: [AuthMiddleware()]),
    GetPage(name: AppRoutes.homeDelivery, page: () => const HomeDeliveryScreen(), binding: HomeDeliveryBinding()),
    GetPage(name: AppRoutes.boxDelivery, page: () => const BoxDeliveryScreen(), binding: BoxDeliveryBinding()),
    GetPage(name: AppRoutes.checkoutDelivery, page: () => const DeliveryCheckoutScreen(), binding: DeliveryCheckoutBinding()),
    GetPage(name: AppRoutes.trackingDelivery, page: () => const TrackingDeliveryScreen(), binding: TrackingDeliveryBinding()),
    GetPage(name: AppRoutes.trackDelivery, page: () => const TrackDeliveryScreen(), binding: TrackDeliveryBinding()),
    GetPage(name: AppRoutes.welcome, page: () => const WelcomeScreen(), binding: WelcomeBinding()),
    GetPage(name: AppRoutes.store, page: () => const StoreScreen(), binding: StoreBinding()),
    GetPage(name: AppRoutes.cart, page: () => const ViewCartScreen(), binding: ViewCartBinding()),
    GetPage(name: AppRoutes.cartOrder, page: () => const CartOrderScreen(), binding: CartOrderBinding()),
    GetPage(name: AppRoutes.cartCheckout, page: () => const CartCheckoutScreen(), binding: CartCheckoutBinding()),
    GetPage(name: AppRoutes.cartConfirm, page: () => const CartOrderConfirmScreen(), binding: CartOrderConfirmBinding()),
    GetPage(name: AppRoutes.storeProducts, page: () => const StoreProductsScreen(), binding: StoreProductsBinding()),
    GetPage(
      name: AppRoutes.storeProductDetail,
      page: () => StoreProductDetailScreen(productId: Get.arguments['productId']),
      binding: StoreProductDetailBinding(),
    ),
  ];
}
