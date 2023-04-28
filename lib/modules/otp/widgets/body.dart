import 'package:flutter/material.dart';
import '../../../modules/otp/widgets/otp_form.dart';
import '../../../config/size_config/size_config.dart';
import '../../../constants/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                Text('OTP Verification', style: titleStyle),
                const Text(
                  "We sent your code to +1 898 860 ***",
                  textAlign: TextAlign.center,
                ),
                buildTimer(),
                const OtpForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.3,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Resend OTP Code',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('This code will expired in '),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: const Duration(seconds: 30),
          builder: (_, dynamic value, child) => Text(
            '00:${value.toInt()}',
            style: const TextStyle(color: kPrimaryColor),
          ),
        )
      ],
    );
  }
}
