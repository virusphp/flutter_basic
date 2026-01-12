import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final namaController = TextEditingController();

  List<String> languages = ['Indonesia', 'Malaysia', 'Singapura'];
  String? selectedLanguage;
  bool isOn = false;
  String gender = 'male';
  bool isCheck = false;
  DateTime? selectedDate;

  @override
  void dispose() {
    namaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Widget'), elevation: 2),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TextField(
            controller: namaController,
            decoration: InputDecoration(
              label: Text('Nama'),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          DropdownButtonFormField<String>(
            hint: Text('Pilih Bahasa'),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 16,
              ),
            ),
            items: languages.map((data) {
              return DropdownMenuItem(value: data, child: Text(data));
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedLanguage = value;
              });
            },
          ),
          SizedBox(height: 16),
          Row(
            children: [
              const Text('Connect Instagram'),
              const SizedBox(width: 8),
              Switch(
                value: isOn,
                onChanged: (bool? val) {
                  if (val != null) {
                    setState(() {
                      isOn = val;
                    });
                  }
                },
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              const Text('Gender :'),
              const SizedBox(width: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    value: "male",
                    groupValue: gender,
                    onChanged: (String? val) {
                      setState(() {
                        if (val != null) {
                          gender = val;
                        }
                      });
                    },
                  ),
                  const Text('Male'),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    value: "female",
                    groupValue: gender,
                    onChanged: (String? val) {
                      setState(() {
                        if (val != null) {
                          gender = val;
                        }
                      });
                    },
                  ),
                  const Text('Female'),
                ],
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Checkbox(
                value: isCheck,
                activeColor: Colors.blue,
                onChanged: (val) {
                  setState(() {
                    if (val != null) {
                      isCheck = val;
                    }
                  });
                },
              ),
              const SizedBox(width: 4),
              const Text(
                'Agree Term & Conditions',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ],
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () async {
              final dateTime = await showDatePicker(
                context: context,
                firstDate: DateTime(1990),
                initialDate: DateTime.now(),
                lastDate: DateTime(2045),
              );

              if (dateTime != null) {
                setState(() {
                  selectedDate = dateTime;
                });
              }
            },
            child: Text('Pilih Tanggal'),
          ),
          Text('Tanggal dipilih : $selectedDate'),
        ],
      ),
    );
  }
}
