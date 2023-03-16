import 'package:contact/model/user.dart';
import 'package:contact/pages/authentication/authenticate.dart';
import 'package:contact/pages/authentication/landing.dart';
import 'package:contact/pages/authentication/login.dart';
import 'package:contact/pages/authentication/register.dart';
import 'package:contact/pages/home/add.dart';
import 'package:contact/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel?>(context);

    print(user);

    if (user == null) {
      return SafeArea(child: Authenticate());
    } else {
      return SafeArea(child: Home());
    }
  }
}
