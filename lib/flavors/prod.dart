import 'package:flutter/material.dart';

import '../cache/shared_preference.dart';
import '../main_common.dart';
import 'config/build_flavor.dart';
import 'config/flavor_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlavorConfig().setupFlavor(flavorConfig: BuildFlavor.prod);
  final pref = Pref();
  await pref.init();
  await mainCommon();
}
