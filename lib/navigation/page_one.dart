import 'package:flutter/material.dart';
import 'package:flutter_basic_new/navigation/page_two.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Page 1', style: TextStyle(fontSize: 30)),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PageTwo();
                    },
                  ),
                );
              },
              child: Text('Ke Page 2'),
            ),
          ],
        ),
      ),
    );
  }
}
