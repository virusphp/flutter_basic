import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Latihan Container'), elevation: 2),
      body: Center(
        child: AspectRatio(
          aspectRatio: 2 / 10,
          child: Container(
            // height: 300,
            // width: double.infinity,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(20),
                  offset: Offset.zero,
                  blurRadius: 15,
                ),
              ],
            ),
            child: Text(
              'Discover the most modern furniture',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w200,
                letterSpacing: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
