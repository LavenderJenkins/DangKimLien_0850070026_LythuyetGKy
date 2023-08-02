// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:metal_health_app/pages/home_page.dart';
import 'package:metal_health_app/pages/second_page.dart';
import 'package:metal_health_app/pages/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// MaterialApp: widget chính -> quacấu hình ứng dụng
//Material:  tạo các thành phần giao diện cụ thể
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // ẩn biểu ngữ debug
      // home: HomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/second': (context) => SecondPage(),
        '/third': (context) => ThirdPage(),
      },
    );
  }
}
