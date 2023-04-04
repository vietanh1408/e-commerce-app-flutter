import 'package:flutter/material.dart';
import '../sign_in/widgets/body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign In',
        ),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}
