import 'package:contact/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:contact/shared/constant.dart';
import 'package:contact/shared/Loading.dart';

class Login extends StatefulWidget {
  // const Login({Key? key}) : super(key: key);

  final Function toogleForm;

  Login({required this.toogleForm});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final AuthService _authService = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error = '';
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
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
                    Text('Welcome back !!'),
                    SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(80, 5, 80, 20),
                      child: Column(
                        children: [
                          TextFormField(
                              validator: (val) =>
                                  val!.isEmpty ? "Please fill in email" : null,
                              onChanged: (val) {
                                email = val;
                              },
                              decoration:
                                  feildInput.copyWith(hintText: "Enter Email")),
                          SizedBox(height: 20),
                          TextFormField(
                            validator: (val) => val!.isEmpty
                                ? "Please fill in the password"
                                : null,
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
                                  setState(() {
                                    loading = true;
                                  });

                                  dynamic results =
                                      await _authService.login(email, password);

                                  if (results == null) {
                                    setState(() {
                                      loading = false;
                                      error = "Email or password Incorrect";
                                    });
                                  }
                                }
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(color: Colors.white),
                              ),
                              style: TextButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 42, 115, 146)),
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
