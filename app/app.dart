import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:lib_getx_template/app/app_localizations.dart';
import 'package:lib_getx_template/data/get_storage.dart';
import 'package:lib_getx_template/presentation/resources/theme_manager.dart';
import 'package:lib_getx_template/presentation/screens/splash_screen.dart';



class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: const [Locale('en'), Locale('ar')],
      localizationsDelegates: LocalizationDelegates,
      localeResolutionCallback: localResolutionCallback,
      locale: myLocale,
      home: const SplashScreen(),
      theme: AppTheme.getLightTheme(),
      darkTheme: AppTheme.getDarkTheme(),
      themeMode: AppTheme.themeMode,
    );
  }
}
