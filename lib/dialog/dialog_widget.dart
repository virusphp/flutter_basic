import 'package:flutter/material.dart';

class DialogWidget extends StatefulWidget {
  const DialogWidget({super.key});

  @override
  State<DialogWidget> createState() => _DialogWidgetState();
}

class _DialogWidgetState extends State<DialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Confirmation'),
                    content: Text('Apakah anda yakin?'),
                    actions: [
                      ElevatedButton(onPressed: () {}, child: Text('Cencel')),
                      ElevatedButton(onPressed: () {}, child: Text('Ok')),
                    ],
                  );
                },
              );
            },
            child: Text('Open Dialog'),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    height: 100,
                    child: Center(child: Text('Logout')),
                  );
                },
              );
            },
            child: Text('BottomSheet'),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Login Successfull'),
                  backgroundColor: Colors.blue,
                ),
              );
            },
            child: Text('Show Snackbar'),
          ),
        ],
      ),
    );
  }
}
