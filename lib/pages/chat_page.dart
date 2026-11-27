import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chat')),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://media.tenor.com/YDdA1jTd6kwAAAAe/prabowo-sawit-prabowo-meme.png'),
            ),
            title: Text('Prabogo Subagio', style: TextStyle(fontWeight: .bold)),
            subtitle: Text('kemarin aku udah nanam sawit di depan rumah...', maxLines: 1, overflow: TextOverflow.ellipsis,),
          )
        ],
      ),
    );
  }
}
