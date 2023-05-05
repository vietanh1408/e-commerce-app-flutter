import 'package:flutter/material.dart';

import './product_images.dart';
import '../../../config/models/Product.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [ProductImages(product: product)],
    );
  }
}
