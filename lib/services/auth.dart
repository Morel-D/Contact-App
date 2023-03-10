import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // SignUp Anonymously

  Future signAnonym() async {
    try {
      final UserCredential results =
          await FirebaseAuth.instance.signInAnonymously();
      return results;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
