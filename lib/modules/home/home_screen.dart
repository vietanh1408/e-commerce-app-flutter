import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text('Home screen'),
    );
  }
}