import 'package:flutter/material.dart';

class GridviewWidget extends StatelessWidget {
  GridviewWidget({super.key});

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
        title: Text("Belajar Flutter GridView Builder"),
        elevation: 2,
        actions: [Icon(Icons.settings), SizedBox(width: 16)],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(width: 1),
            ),
            child: Center(child: Text(categories[index])),
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
