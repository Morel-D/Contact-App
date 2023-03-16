import 'package:flutter/material.dart';
import 'package:contact/pages/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:contact/model/user.dart';
import 'package:contact/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:contact/pages/home/home.dart';
import 'package:contact/pages/home/add.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserModel?>.value(
        initialData: null,
        value: AuthService().onAuthStateChanged,
        builder: (context, snapshot) {
          return MaterialApp(routes: {
            '/home': (context) => Home(),
            '/add': (context) => Add()
          }, debugShowCheckedModeBanner: false, home: Wrapper());
        });
  }
}
