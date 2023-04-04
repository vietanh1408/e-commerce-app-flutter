// class Routes {
//   static const String rootPage = 'RootPage';

//   static const String onBoardingPage = 'OnBoardingPage';

//   static const String commonWidgetPage = 'CommonWidgetPage';

//   // ...
// }

import 'package:flutter/material.dart';
import '../../modules/sign_up/sign_up_screen.dart';
import '../../modules/sign_in/sign_in_screen.dart';
import '../../modules/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
};
