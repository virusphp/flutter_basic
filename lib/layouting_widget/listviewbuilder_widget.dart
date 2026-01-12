import 'package:flutter/material.dart';

class ListviewbuilderWidget extends StatelessWidget {
  ListviewbuilderWidget({super.key});

  final List<String> categories = [
    'All',
    'Living Room',
    'Bed Room',
    'Dining Room',
    'Kitchen',
    'All',
    'Living Room',
    'Bed Room',
    'Dining Room',
    'Kitchen',
    'All',
    'Living Room',
    'Bed Room',
    'Dining Room',
    'Kitchen',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Belajar Flutter ListView Builder"),
        elevation: 2,
        actions: [Icon(Icons.settings), SizedBox(width: 16)],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(categories[index]),
              leading: CircleAvatar(backgroundColor: Colors.greenAccent),
            ),
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
