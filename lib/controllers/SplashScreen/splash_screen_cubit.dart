import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sui_daga/controllers/SplashScreen/splash_screen_state.dart';

import '../../cache/shared_preference.dart';

class SplashScreenCubit extends Cubit<SplashScreenState> {
  SplashScreenCubit() : super(const SplashScreenStates());

  void startAnimation() async {
    await [
      Permission.notification,
      Permission.camera,
      Permission.storage,
    ].request();


    await Future.delayed(const Duration(seconds: 1));
    emit(const SplashScreenStates(startAnimation: true));
    goAnotherScreen();
  }

  void goAnotherScreen() async {
    final _pref = Pref().pref;
    if (_pref.getString("Token") != null) {
      await Future.delayed(const Duration(seconds: 2));
      emit(const SplashScreenStates(isAuth: false));
    } else {
      await Future.delayed(const Duration(seconds: 2));
      emit(const SplashScreenStates(isAuth: true));
    }
  }
}
