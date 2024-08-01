import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lib_getx_template/app/app_localizations.dart';
import 'package:lib_getx_template/presentation/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () => Get.off(() => const MyHomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 190, 152, 255),
        body: Center(child: Text("splash".translateS(context))));
  }
}
