import 'package:firebase_auth/firebase_auth.dart';
import 'package:contact/model/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Create a user object based in firebase
  UserModel? _usersFromDatabaseUsers(User? user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<UserModel?> get onAuthStateChanged {
    return _auth.authStateChanges().map(_usersFromDatabaseUsers);
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

  // Logout Anonumoulsy
  Future logout() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
