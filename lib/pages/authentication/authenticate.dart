import 'package:contact/pages/authentication/login.dart';
import 'package:contact/pages/authentication/register.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showLogin = true;

  void toogleForm() {
    setState(() => showLogin = !showLogin);
  }

  @override
  Widget build(BuildContext context) {
    if (showLogin) {
      return Login(toogleForm: toogleForm);
    } else {
      return Register(toogleForm: toogleForm);
    }
  }
}
