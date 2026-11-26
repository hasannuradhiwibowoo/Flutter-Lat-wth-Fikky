import 'package:flutter/material.dart';
import 'package:kas/pages/profile_pages.dart';

class MainPage extends StatefulWidget {
  const new({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var pages = [
    Text('Home Page'),
    Text('Search Page'),
    ProfilePages(),
  ];


  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}