import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int? price, size, id;
  final Color? color;

  Product({
    this.image = '',
    this.title = '',
    this.description = '',
    this.price,
    this.size,
    this.id,
    this.color
  });
}

List<Product> products = [

  Product(
    id: 1,
    title: 'Bolsa blue',
    price: 234,
    size: 12,
    description: 'dummyText',
    image: "assets/images/bag_1.png",
    color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: 'Bolsa pink',
      price: 299,
      size: 12,
      description: 'dummyText',
      image: "assets/images/bag_2.png",
      color: Color(0xFF3DA984)),
  Product(
      id: 3,
      title: 'Bolsa pink new',
      price: 219,
      size: 12,
      description: 'dummyText',
      image: "assets/images/bag_3.png",
      color: Color(0xFF4DA984)),
  Product(
      id: 4,
      title: 'Bolsa blue new',
      price: 229,
      size: 12,
      description: 'dummyText',
      image: "assets/images/bag_4.png",
      color: Color(0xFF5DA984)),
  Product(
      id: 5,
      title: 'Bolsa black',
      price: 239,
      size: 12,
      description: 'dummyText',
      image: "assets/images/bag_5.png",
      color: Color(0xFF6DA984)),
  Product(
      id: 6,
      title: 'Bolsa red',
      price: 249,
      size: 12,
      description: 'dummyText',
      image: "assets/images/bag_6.png",
      color: Color(0xFF7DA984)),


];
