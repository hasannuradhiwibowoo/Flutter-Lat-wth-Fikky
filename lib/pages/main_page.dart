import 'package:flutter/material.dart';
import 'package:kas/pages/home_page.dart';
import 'package:kas/pages/profile_pages.dart';
import 'package:kas/pages/search_page.dart';

class MainPage extends StatefulWidget {
  const new({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  var selectedPage = 0;

  var pages = [
    HomePage(),
    SearchPage(),
    ProfilePages(),
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedPage,
          onTap: (value) {
            selectedPage = value;
            setState(() {
              
            });
          },
          items:[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search'
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile'
            ),
          ]
        ),
      ),
    );
  }
}