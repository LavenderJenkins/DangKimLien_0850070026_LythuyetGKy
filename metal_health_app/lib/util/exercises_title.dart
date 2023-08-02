// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class ExerciseTitle extends StatelessWidget {
  IconData? icon;
  Color? background;
  String? title;
  String? text;

  ExerciseTitle(
      {Key? key,
      required this.icon,
      required this.background,
      required this.title,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        // ô trắng spaking skill
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(18)),
        child: ListTile(
          // ô cam bo trái tim
          leading: Container(
            padding: EdgeInsets.all(13),
            decoration: BoxDecoration(
              color: background,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
            ),
            // trái tim hồng
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),

          // more bên phải ngoài cùng
          trailing: Icon(Icons.more_horiz),

          // text
          title: Text(
            '$title',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 19),
          ),
          subtitle: Text(
            '$text ',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
          ),
        ));
  }
}
