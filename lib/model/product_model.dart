import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int id, courses;
  final Color color;
  Product({
    required this.image,
    required this.title,
    required this.courses,
    required this.color,
    required this.id,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "English letters",
    image: "assets/images/LL.jfif",
    color: const Color(0xFF71b8ff),
    courses: 16,
  ),
  Product(
    id: 2,
    title: "english Numbers",
    image: "assets/images/Numbersss.jpg",
    color: const Color(0xFFff6374),
    courses: 22,
  ),
  Product(
    id: 3,
    title: "Finance",
    image: "assets/images/finance.png",
    color: const Color(0xFFffaa5b),
    courses: 15,
  ),
  Product(
    id: 4,
    title: "UI/Ux design",
    image: "assets/images/ux.png",
    color: const Color(0xFF9ba0fc),
    courses: 18,
  ),
];
