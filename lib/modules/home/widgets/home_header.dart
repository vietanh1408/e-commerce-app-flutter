import 'package:flutter/material.dart';

import '../../../config/size_config/size_config.dart';
import '../../../modules/home/widgets/icon_btn_with_counter.dart';
import '../../../modules/home/widgets/search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            onPress: () {},
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            onPress: () {},
            numOfItem: 3,
          ),
        ],
      ),
    );
  }
}
