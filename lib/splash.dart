import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lab11/screens/login.dart';

class Splash_theme extends StatefulWidget {
  @override
  _Splash_themeState createState() => _Splash_themeState();
}

class _Splash_themeState extends State<Splash_theme> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 4),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Log_in(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(206, 52, 45, 90),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              "E-Learning App",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
