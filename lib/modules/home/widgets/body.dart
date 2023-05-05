import 'package:flutter/material.dart';

import '../../../config/size_config/size_config.dart';
import '../../../modules/home/widgets/categories.dart';
import '../../../modules/home/widgets/discount_banner.dart';
import '../../../modules/home/widgets/home_header.dart';
import '../../../modules/home/widgets/popular_products.dart';
import '../../../modules/home/widgets/special_offers.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            const HomeHeader(),
            SizedBox(
              height: getProportionateScreenWidth(10),
            ),
            const DiscountBanner(),
            const Categories(),
            const SpecialOffers(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            const PopularProducts(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
          ],
        ),
      ),
    );
  }
}
