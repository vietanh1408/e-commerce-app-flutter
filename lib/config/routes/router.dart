import 'package:flutter/material.dart';
import '../../modules/cart/on_boarding_screen.dart';

class Router {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'OnBoardingPage':
        {
          return MaterialPageRoute(
            builder: (_) => const OnBoardingScreen(),
          );
        }
      default:
        {
          return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            ),
          );
        }
    }
  }
}
