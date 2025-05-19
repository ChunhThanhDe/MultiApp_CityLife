import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sixam_mart_user/di.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/app_overlay_navigator.dart';
import 'package:sixam_mart_user/theme.dart';

_preloadFonts() {
  GoogleFonts.pendingFonts([GoogleFonts.inter(), GoogleFonts.barlow(), GoogleFonts.manrope(), GoogleFonts.robotoMono()]);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await DependencyInjection.init();
  _preloadFonts();
  HttpOverrides.global = MyHttpOverrides();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Platform.isAndroid ? Brightness.dark : null),
  );
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  ).then((val) {
    runApp(
      EasyLocalization(
        startLocale: const Locale('en'),
        supportedLocales: const [Locale('vi'), Locale('en')],
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        child: const MyApp(),
      ),
    );
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    FigmaTheme.modifyBrandColor(BrandColorTypes.purple);
    FigmaTheme.modifyTheme(ThemeTypes.light);
    FigmaTheme.modifySpacing(SpacingTypes.mode1);
    FigmaTheme.modifyFontFamily(FontFamilyTypes.inter);
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return FigmaTheme(
          child: GetMaterialApp(
            title: 'Six Mart',
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            themeMode: ThemeMode.light,
            navigatorKey: AppOverlayNavigator.navigatorKey,
            initialRoute: AppPages.initial,
            getPages: AppPages.appRoutes,
            defaultTransition: Transition.cupertino,
          ),
        );
      },
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}
