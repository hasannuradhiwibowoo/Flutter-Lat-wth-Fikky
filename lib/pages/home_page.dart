import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kas/pages/chat_page.dart';
import 'package:kas/providers/post_provider.dart';
import 'package:kas/widgets/post_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_){
      context.read<PostProvider>().getListPost();
    });
  }

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
        
        // body: Padding(
        //   padding: .all(10),
        //   child: ListView(
        //     children: [
        //       PostCard(username: 'mas Jawir', 
        //       song: 'style - Taylor Swift', 
        //       avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUFdsQVrfN4kDlD_I7WVwJmOIqyfsTx5rLx-5wFWlGaQ&s=10', 
        //       imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJhXf8POyFChRr32TxaRwBszKT2EL5Vhhd2hgoVh2q3g&s=10', 
        //       likeCount: '80', 
        //       commentCount: '2', 
        //       shareCount: '90',
        //       ),
        //       PostCard(username: 'Bowak', 
        //       song: 'message in the bottle - Taylor Swift', 
        //       avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJZPoo1oj58Mvh8XCsghbu4BxalSp7QVkP36c62d7haucnp8ojAKAkPxsP&s=10', 
        //       imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzExVIgNl3JVIl-zcxku6G8COmCgBQqESDtzDkuAKIfowJe4jlgly_w7xc&s=10', 
        //       likeCount: '900', 
        //       commentCount: '600', 
        //       shareCount: '65',),
        //     ]
        //   ))
      ),
    );
  }
}