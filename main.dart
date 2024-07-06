import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lib_getx_template/app/app.dart';
import 'package:lib_getx_template/data/get_storage.dart';

void main() async {
  await GetStorage.init();
  retrieveData();
  runApp(const App());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}
