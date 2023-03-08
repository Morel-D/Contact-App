import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:contact/shared/constant.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.fromLTRB(80, 5, 80, 20),
              child: Column(
                children: [
                  TextField(
                      decoration: feildInput.copyWith(hintText: "Enter Email")),
                  SizedBox(height: 20),
                  TextField(
                    decoration: feildInput.copyWith(hintText: "Enter Password"),
                    obscureText: true,
                  ),
                  SizedBox(height: 40),
                  SizedBox(
                    width: 200,
                    height: 40,
                    child: TextButton(
                      onPressed: () {},
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
                      onPressed: () {},
                      child: Text("Already have an account ?")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
