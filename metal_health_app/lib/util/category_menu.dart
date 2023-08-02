// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class CategoryMenu extends StatelessWidget {
  String? text;
  Color? background;
  CategoryMenu({Key? key, required this.text, required this.background})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: EdgeInsets.symmetric(vertical: 40),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(12),
          color: background),
      child: Center(
        child: Text(
          '$text',
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
