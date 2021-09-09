import 'package:flutter/material.dart';
import 'package:project_fashion_sales_app/models/constants.dart';
import 'package:project_fashion_sales_app/models/product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function? press;

  ItemCard({required this.product, this.press});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(kDefaultPaddin),
          // height: 180,
          // width: 160,
          decoration: BoxDecoration(
            color: product.color,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(product.image),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 8),
          child: Text(
            product.title,
            style: TextStyle(color: kTextLightColor),
          ),
        ),
        Text('R\$ 234,00', style: TextStyle(fontWeight: FontWeight.bold))
      ],
    );
  }
}