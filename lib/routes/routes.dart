
import '../models/BookingModel/booking_model.dart';
import '../view/AboutScreen/about_us_screen.dart';
import '../view/Authentication/Registeration/registeration_screen.dart';
import '../view/ContactUs/contact_us.dart';
import '../view/ProfileScreen/AllPreviousBookings/previous_booking.dart';
import '../view/ProfileScreen/UserMeasureMents/user_measurement.dart';
import 'routes_helper.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.id:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case LoginScreen.id:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const LoginScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = 0.0;
            const end = 1.0;
            const curve = Curves.easeIn;

            var tween = Tween<double>(begin: begin, end: end)
                .chain(CurveTween(curve: curve));
            var opacityAnimation = animation.drive(tween);

            return FadeTransition(
              opacity: opacityAnimation,
              child: child,
            );
          },
        );
        case AboutUsScreen.id:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const AboutUsScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = 0.0;
            const end = 1.0;
            const curve = Curves.easeIn;

            var tween = Tween<double>(begin: begin, end: end)
                .chain(CurveTween(curve: curve));
            var opacityAnimation = animation.drive(tween);

            return FadeTransition(
              opacity: opacityAnimation,
              child: child,
            );
          },
        );
        case ContactUs.id:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const ContactUs(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = 0.0;
            const end = 1.0;
            const curve = Curves.easeIn;

            var tween = Tween<double>(begin: begin, end: end)
                .chain(CurveTween(curve: curve));
            var opacityAnimation = animation.drive(tween);

            return FadeTransition(
              opacity: opacityAnimation,
              child: child,
            );
          },
        );
      case OtpScreen.id:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
           OtpScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = 0.0;
            const end = 1.0;
            const curve = Curves.easeIn;

            var tween = Tween<double>(begin: begin, end: end)
                .chain(CurveTween(curve: curve));
            var opacityAnimation = animation.drive(tween);

            return FadeTransition(
              opacity: opacityAnimation,
              child: child,
            );
          },
        );
      case RegisterationScreen.id:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              RegisterationScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = 0.0;
            const end = 1.0;
            const curve = Curves.easeIn;

            var tween = Tween<double>(begin: begin, end: end)
                .chain(CurveTween(curve: curve));
            var opacityAnimation = animation.drive(tween);

            return FadeTransition(
              opacity: opacityAnimation,
              child: child,
            );
          },
        );
        case MainScreen.id:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const MainScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = 0.0;
            const end = 1.0;
            const curve = Curves.easeIn;

            var tween = Tween<double>(begin: begin, end: end)
                .chain(CurveTween(curve: curve));
            var opacityAnimation = animation.drive(tween);

            return FadeTransition(
              opacity: opacityAnimation,
              child: child,
            );
          },
        );

        case HomeService.id:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const HomeService(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = 0.0;
            const end = 1.0;
            const curve = Curves.easeIn;

            var tween = Tween<double>(begin: begin, end: end)
                .chain(CurveTween(curve: curve));
            var opacityAnimation = animation.drive(tween);

            return FadeTransition(
              opacity: opacityAnimation,
              child: child,
            );
          },
        );
        case MeasurementAndDetails.id:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
               MeasurementAndDetails(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = 0.0;
            const end = 1.0;
            const curve = Curves.easeIn;

            var tween = Tween<double>(begin: begin, end: end)
                .chain(CurveTween(curve: curve));
            var opacityAnimation = animation.drive(tween);

            return FadeTransition(
              opacity: opacityAnimation,
              child: child,
            );
          },
        );
      case PreviousBookingScreen.id:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const PreviousBookingScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = 0.0;
            const end = 1.0;
            const curve = Curves.easeIn;

            var tween = Tween<double>(begin: begin, end: end)
                .chain(CurveTween(curve: curve));
            var opacityAnimation = animation.drive(tween);

            return FadeTransition(
              opacity: opacityAnimation,
              child: child,
            );
          },
        );
        case UserMeasurement.id:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const UserMeasurement(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = 0.0;
            const end = 1.0;
            const curve = Curves.easeIn;

            var tween = Tween<double>(begin: begin, end: end)
                .chain(CurveTween(curve: curve));
            var opacityAnimation = animation.drive(tween);

            return FadeTransition(
              opacity: opacityAnimation,
              child: child,
            );
          },
        );
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
