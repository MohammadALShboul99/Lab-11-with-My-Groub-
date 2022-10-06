import 'package:flutter/material.dart';
import 'package:lab11/Home.dart';

import 'package:lab11/splash.dart';

void main() {
  runApp(MaterialApp(
    routes: {"Home_page": (context) => Home()},
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Splash_theme();
  }
}
