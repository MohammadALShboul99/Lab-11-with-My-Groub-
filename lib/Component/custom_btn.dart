import 'package:flutter/material.dart';

Expanded customButton({
  required String title,
  Color? colorBtn = Colors.cyan,
  required Function() onClick,
}) {
  return Expanded(
    child: ElevatedButton(
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
        backgroundColor: colorBtn,
      ),
      child: Text(title),
    ),
  );
}
