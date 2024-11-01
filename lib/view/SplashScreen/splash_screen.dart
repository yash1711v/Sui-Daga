import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../controllers/SplashScreen/splash_screen_cubit.dart';
import '../../controllers/SplashScreen/splash_screen_state.dart';
import '../../routes/routes_helper.dart';

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
              if (state is SplashScreenStates) {
                startAnimation = state.startAnimation ?? false;
                if (state.isAuth == true) {
                  Future.delayed(const Duration(seconds: 1), () {
                    Navigator.pushReplacementNamed(
                        context, MainScreen.id);
                  });
                } else if (state.isAuth == false) {
                  Future.delayed(const Duration(seconds: 1), () {
                    Navigator.pushReplacementNamed(
                        context, LoginScreen.id);
                  });
                }
              }
              return AnimatedContainer(
                  width: startAnimation ? 300 : 0,
                  duration: const Duration(seconds: 1),
                  child: SvgPicture.asset("assets/Images/logoImage.svg"));
            },
          ),
        ],
      ),
    );
  }
}
