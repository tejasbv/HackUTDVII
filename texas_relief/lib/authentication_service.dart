import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  //authentication variable
  final FirebaseAuth _firebaseAuth;
  //constructor
  AuthenticationService(this._firebaseAuth);

  Stream<User> get autStateChanges => _firebaseAuth.authStateChanges();

  Future<String> signOut({String email, String password}) async {
    _firebaseAuth.signOut();
  }

  Future<String> signIn({String email, String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return "Signed in";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String> signUp({String email, String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return "Signed Up";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}
