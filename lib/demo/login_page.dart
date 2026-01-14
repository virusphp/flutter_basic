import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  bool isObscure = true;

  void toggleObscure() {
    setState(() {
      isObscure = !isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            SizedBox(height: 100),
            Image.asset("assets/images/logo_suja.png"),
            TextFormField(
              decoration: InputDecoration(label: Text('Username')),
              validator: (vallue) =>
                  vallue!.isEmpty ? 'Username tidak boleh kosong' : null,
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: passwordController,
              obscureText: isObscure,
              decoration: InputDecoration(
                label: Text('Password'),
                suffixIcon: GestureDetector(
                  onTap: () => toggleObscure(),
                  child: Icon(
                    isObscure ? Icons.visibility_off : Icons.visibility,
                  ),
                ),
              ),
              validator: (vallue) =>
                  vallue!.isEmpty ? 'Password tidak boleh kosong' : null,
            ),

            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {}
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
