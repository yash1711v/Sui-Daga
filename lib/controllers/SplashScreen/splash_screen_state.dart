import 'package:equatable/equatable.dart';

sealed class SplashScreenState extends Equatable {
  const SplashScreenState();
}

final class SplashScreenStates extends SplashScreenState {
  final bool? startAnimation;
  final bool? isAuth;

  const SplashScreenStates({this.startAnimation,this.isAuth});

SplashScreenStates copyWith({bool? isAuth, bool? startAnimation}) {
  return SplashScreenStates(startAnimation: startAnimation ?? this.startAnimation, isAuth: isAuth ?? this.isAuth);
}

  @override
  List<Object?> get props => [startAnimation,isAuth];
}
