import 'package:doctor_appointment_app/core/routing/routes.dart';
import 'package:doctor_appointment_app/features/login/ui/login_screen.dart';
import 'package:doctor_appointment_app/features/onboarding/ui/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());

      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                  body: Center(
                    child: Text('404'),
                  ),
                ));
    }
  }
}
