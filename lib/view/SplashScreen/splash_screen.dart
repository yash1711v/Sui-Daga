import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sui_daga/controllers/SplashScreen/splash_screen_cubit.dart';
import 'package:sui_daga/controllers/SplashScreen/splash_screen_state.dart';

import '../../routes/routes_helper.dart';
import '../LoginScreen/login_screen.dart';

class SplashScreen extends StatelessWidget {
  static const id = "/";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/Images/splashScreenImage.png"))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<SplashScreenCubit, SplashScreenState>(
            builder: (context, state) {
              bool startAnimation = false;
              if(state is SplashScreenStates){
                startAnimation = state.startAnimation ?? false;
                if(state.isAuth ?? false){
                  Future.delayed(const Duration(milliseconds: 1),(){
                    Navigator.pushReplacementNamed(context, LoginScreen.id);
                  });
                }
              }
              return AnimatedContainer(
                  width: startAnimation ? 300 :0,
                  duration: const Duration(seconds: 1),
                  child: SvgPicture.asset("assets/Images/logoImage.svg"));
            },
          ),
        ],
      ),
    );
  }
}
