import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const new({super.key
  , required this.username, required this.song, required this.avatarUrl, required this.imageUrl, required this.likeCount, required this.commentCount, required this.shareCount});

  final String username;
  final String song;
  final String avatarUrl;
  final String imageUrl;
  final String likeCount;
  final String commentCount;
  final String shareCount;

  @override
  Widget build(BuildContext context) {
    return  Column(
          children: [
            Padding(
              padding: .symmetric(horizontal: 8),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(avatarUrl),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text(username, style: TextStyle(
                              fontSize: 20,
                              fontWeight: .bold,
                            ),),
                            Text(song),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.menu)
                ],
              ),
            ),
            Image.network(imageUrl, width: double.infinity, fit: .cover),
            Padding(
              padding: .symmetric(horizontal: 8),
              child: Row(
                children: [
                  Icon(Icons.favorite),
                  SizedBox(width: 2),
                  Text('$likeCount'),
                  SizedBox(width: 8),
                  
                  Icon(Icons.comment),
                  SizedBox(width: 2),
                  Text('$commentCount'),
                  SizedBox(width: 8),
                  
                  Icon(Icons.repeat),
                  SizedBox(width: 2),
                  Text('$shareCount'),
                  SizedBox(width: 8),
                  
                  Spacer(),
                  Icon(Icons.bookmark),
                ],
              ),
            ),
          ],
        );
  }
}