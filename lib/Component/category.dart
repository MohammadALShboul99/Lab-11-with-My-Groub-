import 'package:lab11/Home.dart';
import 'package:lab11/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:lab11/screens/letters.dart';
import 'package:lab11/screens/login.dart';
import 'package:lab11/screens/numbers.dart';

List pages = [
  Letters(),
  Number(),
  const Home(),
  const Home(),
];

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.85),
        itemBuilder: (context, index) => CategoryCard(
              product: products[index],
              onmyTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => pages[index]));
              },
              pageName: "",
            ));
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.product,
    required this.onmyTap,
    required this.pageName,
  }) : super(key: key);
  final Product product;
  final String pageName;
  final Function() onmyTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onmyTap,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: product.color, borderRadius: BorderRadius.circular(15.0)),
          child: Column(
            children: [
              Image.asset(
                product.image,
                height: 100,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                product.title,
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "${product.courses} courses",
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
