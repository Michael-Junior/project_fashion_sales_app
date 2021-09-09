// @dart=2.9

import 'package:flutter/material.dart';
import 'package:project_fashion_sales_app/models/constants.dart';
import 'package:project_fashion_sales_app/screens/home.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppFashionSales',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(title: 'Vendendo Moda', titleComplement: ' ♥', ),
    );
  }
}


