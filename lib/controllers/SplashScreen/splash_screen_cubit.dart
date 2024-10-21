import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sui_daga/controllers/SplashScreen/splash_screen_state.dart';

import '../../cache/shared_preference.dart';
import '../../routes/routes_helper.dart';

class SplashScreenCubit extends Cubit<SplashScreenState> {
  SplashScreenCubit() : super(const SplashScreenStates());

  void startAnimation() async {
    await [
      Permission.notification,
      Permission.camera,
      Permission.storage,
    ].request();


    await Future.delayed(const Duration(seconds: 1));
    emit(const SplashScreenStates(startAnimation: true,));
    goAnotherScreen();
  }

  void goAnotherScreen() async {
    final _pref = Pref().pref;
    String? token = await _pref.getString("Token");
    await Future.delayed(const Duration(seconds: 1));
    if (token != null) {
      emit(const SplashScreenStates(isAuth: true,startAnimation: true));
    } else {
      emit(const SplashScreenStates(isAuth: false,startAnimation: true));
    }
  }
}
