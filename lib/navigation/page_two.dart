import 'package:flutter/material.dart';
import 'package:flutter_basic_new/navigation/page_one.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return PageOne();
              },
            ),
          ),
          child: Text('Page 2', style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}
