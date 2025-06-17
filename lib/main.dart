import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/constants/app_strings.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/di.dart';
import 'package:sixam_mart_user/presentation/routes/app_pages.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_navigator.dart';

void main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      _setupTheme();

      await _setupSystemUI();

      await Future.wait([EasyLocalization.ensureInitialized(), DependencyInjection.init()]);

      runApp(
        DevicePreview(
          enabled: !kReleaseMode,
          builder: (context) => EasyLocalization(
            startLocale: const Locale('en'),
            supportedLocales: const [Locale('vi'), Locale('en')],
            path: 'assets/translations',
            fallbackLocale: const Locale('en'),
            child: const MyApp(),
          ),
        ),
      );
    },
    (error, stackTrace) {
      log('Uncaught error: $error', error: error, stackTrace: stackTrace, name: 'MyApp');
    },
  );
}

void _setupTheme() {
  SixMartTheme.modifyBrandColor(BrandColorTypes.purple);
  SixMartTheme.modifyTheme(ThemeTypes.light);
  SixMartTheme.modifySpacing(SpacingTypes.mode1);
  SixMartTheme.modifyFontFamily(FontFamilyTypes.inter);
}

Future<void> _setupSystemUI() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Platform.isAndroid ? Brightness.dark : null));
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return SixMartTheme(
          child: GetMaterialApp(
            title: AppStrings.appName,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            themeMode: ThemeMode.light,
            navigatorKey: AppNavigator.navigatorKey,
            initialRoute: AppPages.initial,
            getPages: AppPages.appRoutes,
            defaultTransition: Transition.cupertino,
          ),
        );
      },
    );
  }
}
