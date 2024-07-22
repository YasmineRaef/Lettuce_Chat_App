import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lib_getx_template/app/app.dart';
import 'package:lib_getx_template/presentation/home_page.dart';
import 'package:lib_getx_template/presentation/screens/splash_screen.dart';

class NamedRoutes {
  static String material = "/material";
  static String home = "/home";
  static String splash = "/splash";
}

class GeneratedRoutes {
  static List<GetPage> getRoute() => [
        GetPage(name: NamedRoutes.material, page: () => const App()),
        GetPage(name: NamedRoutes.home, page: () => const MyHomePage()),
        GetPage(name: NamedRoutes.splash, page: () => const SplashScreen())
      ];
}

extension MyNavigator on BuildContext {
  static goToPage(BuildContext context, Widget page) {
    return Navigator.pushReplacement(
        context, MaterialPageRoute(builder: ((context) => page)));
  }
} // also, can be done by Get.to(specific page)
