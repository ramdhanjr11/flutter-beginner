import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                      TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 4.0),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text("Silahkan login dengan akun anda",
                  style: TextStyle(fontSize: 16.0)),
            ),
            const SizedBox(height: 24.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Username",
                    hintText: "Masukan username anda"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    hintText: "Masukan password anda"),
              ),
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () => showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            content: Container(
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator()),
                          )),
                  child: const Text("Login")),
            )
          ],
        ),
      ),
    );
  }
}
