import 'package:flutter/material.dart';
import 'package:submission_beginner/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicoding Courses',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: LoginScreen(),
      )
    );
  }
}
