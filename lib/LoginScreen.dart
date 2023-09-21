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
      appBar: AppBar(
        toolbarHeight: 200,
        actions: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(),
                child: Row(
                  children: [
                    Transform(
                      transform: Matrix4.translationValues(-289.0, 0.0, 0.0),
                      child: const Text(
                        'DermaDoc',
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat-Medium.ttf'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
        title: const Column(
          children: [
            Text(
              "Login",
              textAlign: TextAlign.start,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat-SemiBold.ttf'),
            ),
          ],
        ),
        centerTitle: false,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/DermaDoc_solid.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: "Email",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 60),
                TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: "Password",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 230),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        //from here the user will go the home page
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Please fill input')),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      fixedSize: const Size(450, 50),
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromARGB(255, 59, 82, 255),
                    ),
                    child: const Text(
                      'Log In',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LogInClass()),
                    );
                  },
                  label: const Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black87,
                    ),
                  ),
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Color.fromARGB(255, 59, 82, 255),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
