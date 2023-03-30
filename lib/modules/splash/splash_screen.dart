import 'package:flutter/material.dart';
import 'package:initproject/config/size_config/size_config.dart';
import 'package:initproject/modules/splash/widgets/body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
