// class Routes {
//   static const String rootPage = 'RootPage';

//   static const String onBoardingPage = 'OnBoardingPage';

//   static const String commonWidgetPage = 'CommonWidgetPage';

//   // ...
// }

import 'package:flutter/material.dart';
import '../../modules/detail/detail_screen.dart';
import '../../modules/forgot_password/forgot_password_screen.dart';
import '../../modules/sign_in_success/sign_in_success_screen.dart';
import '../../modules/otp/otp_screen.dart';
import '../../modules/complete_profile/complete_profile_screen.dart';
import '../../modules/home/home_screen.dart';
import '../../modules/sign_up/sign_up_screen.dart';
import '../../modules/sign_in/sign_in_screen.dart';
import '../../modules/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  SignInSuccessScreen.routeName: (context) => const SignInSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  DetailScreen.routeName: (context) => const DetailScreen(),
};
