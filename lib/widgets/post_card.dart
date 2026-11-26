import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:kas/models/post_model.dart';

class PostCard extends StatelessWidget {
  const new({super.key, required this.post});

  final PostModel post;

  
  @override
  Widget build(BuildContext context) {
    return  Column(
          children: [
            Padding(
              padding: .symmetric(horizontal: 8),
              child: Row(
                children: [
                  CircleAvatar(
                   child:
                   Text(post.username[0]),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text(post.username, style: TextStyle(
                              fontSize: 20,
                              fontWeight: .bold,
                            ),),
                            Text(''),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.menu)
                ],
              ),
            ),
            Image.network(post.image, width: double.infinity, fit: .cover),
            SizedBox(height: 8),
            Text(post.date),
            SizedBox(height: 8),
            Text(post.desc),

            // Padding(
            //   padding: .symmetric(horizontal: 8),
            //   child: Row(
            //     children: [
            //       Icon(Icons.favorite),
            //       SizedBox(width: 2),
            //       Text('$likeCount'),
            //       SizedBox(width: 8),
                  
            //       Icon(Icons.comment),
            //       SizedBox(width: 2),
            //       Text('$commentCount'),
            //       SizedBox(width: 8),
                  
            //       Icon(Icons.repeat),
            //       SizedBox(width: 2),
            //       Text('$shareCount'),
            //       SizedBox(width: 8),
                  
            //       Spacer(),
            //       Icon(Icons.bookmark),
            //     ],
            //   ),
            // ),
          ],
        );
  }
}