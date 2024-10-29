import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../cache/shared_preference.dart';
import '../firebase_options.dart';
import '../main_common.dart';
import 'config/build_flavor.dart';
import 'config/flavor_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlavorConfig().setupFlavor(flavorConfig: BuildFlavor.dev);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final pref = Pref();
  await pref.init();
  await mainCommon();
}
