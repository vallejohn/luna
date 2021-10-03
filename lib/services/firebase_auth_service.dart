import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';

class FirebaseAuthService {
  late final FirebaseAuth _auth;

  Logger logger = Logger();

  void initialize() {
    _auth = FirebaseAuth.instance;
  }

  User? getCurrentUser() {
    return _auth.currentUser!;
  }

  Future<UserCredential>? signInWithEmailAndPassword({required String email, required String password}) async {
    return await _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<bool> signOut() async {
    try {
      await _auth.signOut();
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<List> createUserWithEmailAndPassword({required String email, required String password}) async {
    UserCredential? userCredential;
    FirebaseAuthException? error;

    //CHECK IF USERNAME OR EMAIL EXIST BEFORE CREATING

    try {
      userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      logger.i('Successfully created user on firebaseAuth.');
    } on FirebaseAuthException catch (e) {
      /* if (e.code == 'weak-password') {
        print('The password is weak.');
        error = e;
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        error = e;
      } */
      error = e;
    } catch (e) {
      print('Error: $e');
    }
    return [userCredential, error];
  }
}
