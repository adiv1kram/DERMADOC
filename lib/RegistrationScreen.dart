import 'package:dermadoc_sih/LoginScreen.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationPage();
}

class _RegistrationPage extends State<RegistrationScreen> {
  final _formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final numbercontroller = TextEditingController();
  final passwordController = TextEditingController();
  var text = '';
  String? get _erroremailtext {
    var emailcontroller;
    final text = emailcontroller.value.text;

    if (text.isEmpty) {
      return 'Must not be empty';
    }
    if (!text.contains('@')) {
      return 'Must contain @ ';
    }
  }

  String? get _errorphonenumbertext {
    final text2 = numbercontroller.value.text;
    if (text2.isEmpty) {
      return 'Must not be empty';
    }
    if (text2.length < 10 || text2.length > 10) {
      return 'number length should be 10';
    }
    return null;
  }

  // ignore: unused_element
  String? get _errorpasswordtext {
    final text3 = passwordController.value.text;
    if (text3.isEmpty) {
      return 'Must not be empty';
    }
    if (text3.length < 5 || text3.length > 10) {
      return 'password should be in between 5 to 10 characters';
    }
    return null;
  }

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
              'Register',
              textAlign: TextAlign.start,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat-SemiBold.ttf'),
            )
          ],
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/DermaDoc_solid.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 5, 20),
                  child: Material(
                    elevation: 5.0,
                    shadowColor: Colors.black,
                    child: TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          errorText: _erroremailtext,
                          label: const Text(
                            'VITAP Email ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w900),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        onChanged: (text) => setState(() => text)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 5, 20),
                  child: Material(
                    elevation: 5.0,
                    shadowColor: Colors.black,
                    child: TextFormField(
                        controller: numbercontroller,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          errorText: _errorphonenumbertext,
                          label: const Text('Phone Number ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900)),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        onChanged: (text) => setState(() => text)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 5, 20),
                  child: Material(
                    elevation: 5.0,
                    shadowColor: Colors.black,
                    child: TextFormField(
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          errorText: _errorpasswordtext,
                          label: const Text('Password ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900)),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        onChanged: (text) => setState(() => text)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Color.fromARGB(255, 59, 82, 255),
                      fixedSize: const Size(350, 30),
                      foregroundColor: Colors.white),
                  child: const Text(
                    'Register',
                    style: TextStyle(fontSize: 8),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LogInClass(),
                          ));
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                    ),
                    child: const Text('Login')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
