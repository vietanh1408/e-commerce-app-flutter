import 'package:flutter/material.dart';
import './widgets/body.dart';

class SignInSuccessScreen extends StatelessWidget {
  const SignInSuccessScreen({Key? key}) : super(key: key);

  static String routeName = '/sign_in_success';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Success'),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}
