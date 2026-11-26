import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Cari..',
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(),
          ),
        ))
    );
  }
}