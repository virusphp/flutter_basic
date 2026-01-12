import 'package:flutter/material.dart';

class ShowTextWidget extends StatelessWidget {
  final String title;
  const ShowTextWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title);
  }
}
