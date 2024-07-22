import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

final box = GetStorage();
late Locale myLocale;
late IconData myState;

void retrieveData() {
  var state = box.read('state'); //light
  var local = box.read('local'); //en
  local == null ? myLocale = const Locale('en') : myLocale = local;
  state == null ? myState = Icons.light_mode : myState = state;
}
