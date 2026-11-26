import 'package:flutter/material.dart';
import 'package:kas/pages/chat_page.dart';

class HomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          actions: [
            IconButton(
              icon: Icon(Icons.chat_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_){
                    return ChatPage();
                  }),
                );
              }
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: .symmetric(horizontal: 8),
              child: Row(
                children: [
                  CircleAvatar(),
                  SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text('Info Indo', style: TextStyle(
                          fontSize: 20,
                          fontWeight: .bold,
                        ),),
                        Text('FSTVLST - Jefferson'),
                      ],
                    ),
                  ),
                  Icon(Icons.menu)
                ],
              ),
            ),
            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT70yJP5MFVigyEyd8L1RRqqNqz-4aflLc14tp2viqx3ZBODEdPdG1dvng&s=10', width: double.infinity, fit: .cover),
            Padding(
              padding: .symmetric(horizontal: 8),
              child: Row(
                children: [
                  Icon(Icons.favorite),
                  SizedBox(width: 2),
                  Text('2K'),
                  SizedBox(width: 8),
                  
                  Icon(Icons.comment),
                  SizedBox(width: 2),
                  Text('2'),
                  SizedBox(width: 8),
                  
                  Icon(Icons.repeat),
                  SizedBox(width: 2),
                  Text('Repost'),
                  SizedBox(width: 8),
                  
                  Spacer(),
                  Icon(Icons.bookmark),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}