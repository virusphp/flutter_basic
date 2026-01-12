import 'package:flutter/material.dart';

class ChangeTimeWidget extends StatefulWidget {
  const ChangeTimeWidget({super.key});

  @override
  State<ChangeTimeWidget> createState() => _ChangeTimeWidgetState();
}

class _ChangeTimeWidgetState extends State<ChangeTimeWidget> {
  DateTime time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Time: $time', style: TextStyle(color: Colors.red, fontSize: 24)),
        ElevatedButton(
          onPressed: () {
            setState(() {
              time = DateTime.now();
            });
          },
          child: Text(
            'Ganti Time',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
