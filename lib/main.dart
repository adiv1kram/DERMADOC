import 'package:dermadoc_sih/LoginScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DermaDoc',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: const Color.fromARGB(255, 246, 246, 246),
      ),
      home: const LogInClass(),
    );
  }
}
