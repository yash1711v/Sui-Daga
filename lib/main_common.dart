import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sui_daga/controllers/BookingController/HomeService/home_service_cubit.dart';
import 'package:sui_daga/controllers/BookingController/MeasurementAndDetails/measurement_cubit.dart';
import 'package:sui_daga/controllers/BookingController/booking_cubit.dart';
import 'package:sui_daga/controllers/HomeScreenController/home_cubit.dart';
import 'package:sui_daga/controllers/MainScreenController/main_screen_cubit.dart';
import 'package:sui_daga/controllers/OtpController/otp_cubit.dart';
import 'package:sui_daga/controllers/ProfileScreenController/UserMeasureMentController/user_measure_ment_cubit.dart';
import 'package:sui_daga/controllers/ProfileScreenController/profile_cubit.dart';
import 'package:sui_daga/controllers/RegisteratonScreenController/registeration_cubit.dart';
import 'package:sui_daga/controllers/SplashScreen/splash_screen_cubit.dart';
import 'package:sui_daga/routes/routes.dart';
import 'package:sui_daga/style/Pallet.dart';
import 'package:sui_daga/view/SplashScreen/splash_screen.dart';

import 'controllers/LoginScreenController/login_cubit.dart';
import 'controllers/ProfileScreenController/PreviousBookingController/previous_cubit.dart';
import 'flavors/config/flavor_config.dart';
import 'models/ProfileModel/profile_model.dart';

Future mainCommon() async {
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
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
            LoginCubit()..setUpLoginScreen(),
          ),
          BlocProvider<HomeCubit>(
            create: (BuildContext context) =>
                HomeCubit()..getHomeData(),
          ),
          BlocProvider<BookingCubit>(
            create: (BuildContext context) => BookingCubit()..setBookingScreen(),
          ),
          BlocProvider<MainScreenCubit>(
            create: (BuildContext context) =>
            MainScreenCubit()..getMainScreenData(context),
          ),
          BlocProvider<HomeServiceCubit>(
            create: (BuildContext context) =>
            HomeServiceCubit()..setHomeServiceScreen(),
          ),
          BlocProvider<MeasurementCubit>(
            create: (BuildContext context) =>
                MeasurementCubit()..setMeasurementScreen(),
          ),
          BlocProvider<OtpCubit>(
            create: (BuildContext context) =>
            OtpCubit()..setUpOtpScreen(),
          ),
          BlocProvider<ProfileCubit>(
            create: (BuildContext context) =>
            ProfileCubit()..setProfileScreen(const ProfileModel()),
          ),
          BlocProvider<RegisterationCubit>(
            create: (BuildContext context) =>
                RegisterationCubit(),
          ),
          BlocProvider<PreviousCubit>(
            create: (BuildContext context) =>
            PreviousCubit()..getPreviousBooking(),
          ),
          BlocProvider<UserMeasureMentCubit>(
            create: (BuildContext context) =>
            UserMeasureMentCubit(),
          ),
        ],
        child: MaterialApp(
          title: FlavorConfig.instance.appName,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: Routes.generateRoute,
          theme: ThemeData(
            appBarTheme:  const AppBarTheme(
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
