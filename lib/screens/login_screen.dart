import 'package:flutter/material.dart';
import 'package:submission_beginner/colors.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 50.0),
            Center(
              child: SizedBox(
                width: 250.0,
                child: Image.asset("images/dicoding-logo-default.png"),
              ),
            ),
            const SizedBox(height: 50.0),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text("Selamat datang di dicoding",
                  style:
                  TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: dicodingColor)),
            ),
            const SizedBox(height: 4.0),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                  "Silahkan login dengan akun anda",
                  style: TextStyle(fontSize: 16.0, color: dicodingColor)
              ),
            ),
            const SizedBox(height: 24.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                controller: _usernameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Silahkan masukan username anda terlebih dahulu';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Username",
                    hintText: "Masukan username anda"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                controller: _passwordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Masukan password anda terlebih dahulu';
                  }
                  return null;
                },
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    hintText: "Masukan password anda"),
              ),
            ),
            Center(
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.only(left: 16, right: 16),
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        if (_usernameController.text == 'admin' &&
                            _passwordController.text == 'admin') {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) =>
                              const HomeScreen()
                          ));
                        }
                      }
                    },
                    child: const Text("Login")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
