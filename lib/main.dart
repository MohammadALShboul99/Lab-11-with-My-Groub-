import 'package:flutter/material.dart';
import 'package:lab11/Home.dart';

import 'package:lab11/Welcom.dart';
import 'package:lab11/screens/login.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      "Home_page": (context) => Home(),
      "Login_page": (context) => Log_in()
    },
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Welcome();
  }
}
