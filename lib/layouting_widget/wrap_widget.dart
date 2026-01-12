import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  WrapWidget({super.key});

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
        title: Text("Belajar Flutter Wrap"),
        elevation: 2,
        actions: [Icon(Icons.settings), SizedBox(width: 16)],
      ),
      body: Wrap(
        runSpacing: 2,
        spacing: 10,
        children: List.generate(categories.length, (index) {
          return Chip(label: Text(categories[index]));
        }),
      ),
    );
  }
}
