import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

final box = GetStorage();
late Locale myLocale;

void retrieveData() {
  final state = box.read('state'); //light
  final local = box.read('local'); //en
  if (local == null) {
    myLocale = const Locale('en');
  } else {
    myLocale = local;
  }
}
