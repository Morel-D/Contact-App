import 'package:flutter/material.dart';
import 'package:contact/shared/constant.dart';

class Login extends StatefulWidget {
  // const Login({Key? key}) : super(key: key);

  final Function toogleForm;

  Login({required this.toogleForm});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          child: Column(
            children: [
              SizedBox(height: 30),
              Text(
                "HyApp",
                style: TextStyle(
                    fontSize: 40,
                    color: Color.fromARGB(255, 141, 215, 247),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('Welcome back !!'),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 5, 80, 20),
                child: Column(
                  children: [
                    TextField(
                        onChanged: (val) {
                          email = val;
                        },
                        decoration:
                            feildInput.copyWith(hintText: "Enter Email")),
                    SizedBox(height: 20),
                    TextField(
                      onChanged: (val) {
                        password = val;
                      },
                      decoration:
                          feildInput.copyWith(hintText: "Enter Password"),
                      obscureText: true,
                    ),
                    SizedBox(height: 40),
                    SizedBox(
                      width: 200,
                      height: 40,
                      child: TextButton(
                        onPressed: () {
                          print(email);
                          print(password);
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: TextButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 42, 115, 146)),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextButton(
                        onPressed: () {
                          widget.toogleForm();
                        },
                        child: Text("Already have an account ?")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
