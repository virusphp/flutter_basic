import 'package:flutter/material.dart';

class ListviewWidget extends StatelessWidget {
  ListviewWidget({super.key});

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
        title: Text("Belajar Flutter ListView"),
        elevation: 2,
        actions: [Icon(Icons.settings), SizedBox(width: 16)],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: List.generate(categories.length, (index) {
          return Card(child: ListTile(title: Text(categories[index])));
        }),
      ),
    );
  }
}
