import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Belajar Flutter Image"),
        elevation: 2,
        actions: [Icon(Icons.settings), SizedBox(width: 16)],
      ),
      body: Center(
        child: CircleAvatar(
          radius: 100,
          backgroundImage: NetworkImage('https://picsum.photos/200/300'),
        ),
      ),
    );
  }
}
