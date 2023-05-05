import 'package:flutter/material.dart';
import '../../../config/size_config/size_config.dart';
import '../../../constants/constants.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Product',
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(18),
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'See More',
                  style: TextStyle(
                    color: Color(0xFFBBBBBB),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              PopularProductCard(
                image: 'assets/images/Image Popular Product 1.png',
                tag: '1',
                press: () {},
              ),
              PopularProductCard(
                image: 'assets/images/Image Popular Product 2.png',
                tag: '2',
                press: () {},
              ),
              PopularProductCard(
                image: 'assets/images/Image Popular Product 3.png',
                tag: '3',
                press: () {},
              )
            ],
          ),
        )
      ],
    );
  }
}

class PopularProductCard extends StatelessWidget {
  const PopularProductCard({
    Key? key,
    required this.image,
    required this.tag,
    required this.press,
  }) : super(key: key);

  final String? image, tag;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: getProportionateScreenWidth(20),
      ),
      child: SizedBox(
        width: getProportionateScreenWidth(140),
        child: GestureDetector(
          onTap: press,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(
                    getProportionateScreenWidth(20),
                  ),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Hero(
                    tag: tag!,
                    child: Image.asset(image!),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
