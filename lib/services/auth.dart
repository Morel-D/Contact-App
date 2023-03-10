import 'package:firebase_auth/firebase_auth.dart';
import 'package:contact/model/user.dart';

class AuthService {
  // Create a user object based in firebase
  UserModel? _usersFromDatabaseUsers(User? user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  // SignUp Anonymously
  Future signAnonym() async {
    try {
      final UserCredential results =
          await FirebaseAuth.instance.signInAnonymously();
      return results.user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
