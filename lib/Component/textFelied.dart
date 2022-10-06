import 'package:flutter/material.dart';

class Text_fel extends StatelessWidget {
  Text_fel({this.obscure, required this.TypeInput});
  bool? obscure;
  String? TypeInput;

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: true,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2)),
        hintText: "Enter Your ${TypeInput} .",
        label: Text("${TypeInput}"),
        prefixIcon: Icon(Icons.person),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      maxLines: 1,
      maxLength: 40,
      textAlign: TextAlign.center,
      obscureText: obscure!,
    );
  }
}
