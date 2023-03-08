import 'package:contact/pages/authentication/landing.dart';
import 'package:contact/pages/authentication/register.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Register());
  }
}
