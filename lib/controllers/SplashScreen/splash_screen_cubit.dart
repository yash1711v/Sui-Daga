import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:sui_daga/controllers/SplashScreen/splash_screen_state.dart';


class SplashScreenCubit extends Cubit<SplashScreenState> {
  SplashScreenCubit() : super(const SplashScreenStates());

  void startAnimation() async {
    await Future.delayed(const Duration(seconds: 1));
    emit(const SplashScreenStates(startAnimation: true));
    goAnotherScreen();
  }

  void goAnotherScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    emit(const SplashScreenStates(isAuth: true));
  }
}
