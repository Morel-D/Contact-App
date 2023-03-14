import 'package:flutter/material.dart';
import 'package:contact/shared/constant.dart';
import 'package:contact/services/auth.dart';

class Register extends StatefulWidget {
  // const Register({Key? key}) : super(key: key);

  final Function toogleForm;
  Register({required this.toogleForm});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _authService = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
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
              Text('Connect with the world anywhere at'),
              Text(' anytime with HyApp'),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 5, 80, 20),
                child: Column(
                  children: [
                    TextFormField(
                        validator: (val) => val!.isEmpty ? "Empty Email" : null,
                        onChanged: (val) {
                          email = val;
                        },
                        decoration:
                            feildInput.copyWith(hintText: "Enter Email")),
                    SizedBox(height: 20),
                    TextFormField(
                      validator: (val) =>
                          val!.isEmpty ? "Empty password" : null,
                      onChanged: (val) {
                        password = val;
                      },
                      decoration:
                          feildInput.copyWith(hintText: "Enter Password"),
                      obscureText: true,
                    ),
                    SizedBox(height: 20),
                    Text(error, style: TextStyle(color: Colors.red)),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 200,
                      height: 40,
                      child: TextButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            dynamic resluts =
                                await _authService.regiter(email, password);
                            if (resluts == null) {
                              setState(() {
                                error = "Email format not correct";
                              });
                            }
                          }
                        },
                        child: Text(
                          'Register',
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
