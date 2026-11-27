import 'package:flutter/material.dart';
import 'package:kas/pages/chat_page.dart';
import 'package:kas/widgets/post_card.dart';

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
        body: Padding(
          padding: .all(10),
          child: ListView(
            children: [
              PostCard(username: '', song: '', avatarUrl: '', imageUrl: '', likeCount: '', commentCount: '', shareCount: '',),
              PostCard(username: '', song: '', avatarUrl: '', imageUrl: '', likeCount: '', commentCount: '', shareCount: '',),
            ]
          ))
      ),
    );
  }
}