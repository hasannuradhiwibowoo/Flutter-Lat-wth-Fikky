import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Cari..',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(2),
              itemCount: 9,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                childAspectRatio: 0.6,
                mainAxisSpacing: 2,
              ),
              itemBuilder: (context, index) {
                return Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKWrbmN2eYW0c0zb1D7uoEJoeRhp121TSsI__TCdYrxi4elrHrome5Z3lt&s=10',
                fit: .cover);
              },
            ),
          ),
        ],
      )
    );
  }
}