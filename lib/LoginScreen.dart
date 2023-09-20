import 'package:flutter/material.dart';

class LogInClass extends StatefulWidget {
  const LogInClass({Key? key}) : super(key: key);

  @override
  State<LogInClass> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<LogInClass> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: []),
    );
  }
}
