import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fashion_sales_app/components/categories.dart';
import 'package:project_fashion_sales_app/models/constants.dart';
import 'package:project_fashion_sales_app/components/item_card.dart';
import 'package:project_fashion_sales_app/models/product.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        Categories(),
        Container(
          child: Expanded(
              child: Container(
                color: Colors.purple[50],
                child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: kDefaultPaddin,
                  mainAxisSpacing: kDefaultPaddin,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                ),
            ),
          ),
              )),
        ),
      ],
    );
  }
}
