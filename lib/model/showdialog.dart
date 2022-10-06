import 'package:flutter/material.dart';

class MyAlert extends StatelessWidget {
  MyAlert({required this.Error, this.myfunction});
  String? Error;
  Function()? myfunction;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        insetPadding: EdgeInsets.symmetric(horizontal: 70, vertical: 160),
        alignment: Alignment.topCenter,
        title: Center(child: Text("Error")),
        content: Center(
            child: Container(
                child: Column(children: [
          Text("$Error"),
        ]))));
  }
}
