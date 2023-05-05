import 'dart:developer';

import 'package:flutter/material.dart';

import './widgets/body.dart';
import '../../config/models/Product.dart';
import '../../modules/detail/widgets/custom_app_bar.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  static String routeName = '/detail';

  @override
  Widget build(BuildContext context) {
    final ProductDetailArguments args =
        ModalRoute.of(context)!.settings.arguments as ProductDetailArguments;

    inspect(args.product);

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(
          rating: args.product.rating,
        ),
      ),
      body: Body(
        product: args.product,
      ),
    );
  }
}

class ProductDetailArguments {
  final Product product;

  @override
  String toString() {
    return '{id: ${product.id}, title: ${product.title}, description: ${product.description}, images: ${product.images}, colors: ${product.colors}, rating: ${product.rating}, price: ${product.price}, isFavorite: ${product.isFavorite}, isPopular: ${product.isPopular}}';
  }

  ProductDetailArguments({required this.product});
}
