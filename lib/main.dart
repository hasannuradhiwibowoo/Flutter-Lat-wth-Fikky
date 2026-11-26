import 'package:flutter/material.dart';
import 'package:kas/pages/login_page.dart';
import 'package:kas/pages/main_page.dart';
import 'package:kas/pages/profile_pages.dart';

void main() {
  runApp(MyKas());
}

class MyKas extends StatelessWidget {
  const MyKas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}
