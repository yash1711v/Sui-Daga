import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sui_daga/controllers/BookingController/booking_cubit.dart';
import 'package:sui_daga/controllers/HomeScreenController/home_cubit.dart';
import 'package:sui_daga/controllers/MainScreenController/main_screen_cubit.dart';
import 'package:sui_daga/controllers/SplashScreen/splash_screen_cubit.dart';
import 'package:sui_daga/routes/routes.dart';
import 'package:sui_daga/style/Pallet.dart';
import 'package:sui_daga/view/SplashScreen/splash_screen.dart';

import 'controllers/LoginScreenController/login_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<SplashScreenCubit>(
            create: (BuildContext context) =>
            SplashScreenCubit()..startAnimation(),
          ),
          BlocProvider<LoginCubit>(
            create: (BuildContext context) =>
            LoginCubit(),
          ),
          BlocProvider<HomeCubit>(
            create: (BuildContext context) =>
                HomeCubit()..getHomeData(),
          ),
          BlocProvider<BookingCubit>(
            create: (BuildContext context) => BookingCubit(),
          ),
          BlocProvider<MainScreenCubit>(
            create: (BuildContext context) =>
            MainScreenCubit()..getMainScreenData(),
          ),
        ],
        child: MaterialApp(
          title: "Sui Daga",
          debugShowCheckedModeBanner: false,
          onGenerateRoute: Routes.generateRoute,
          theme: ThemeData(
            appBarTheme:  AppBarTheme(
                foregroundColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.black)),
            scaffoldBackgroundColor: Pallet.background,
            primaryColor: Pallet.primary,
            fontFamily: 'Montserrat',
            visualDensity: VisualDensity.standard,
            colorScheme: ColorScheme.fromSwatch().copyWith(
              primary: Pallet.primary,
            ),
            bottomSheetTheme:
                const BottomSheetThemeData(backgroundColor: Colors.transparent),
          ),
          initialRoute: SplashScreen.id,
        ));
  }
}
