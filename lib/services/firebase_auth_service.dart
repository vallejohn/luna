import 'dart:math';

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

  Future<List> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    User? user;
    FirebaseAuthException? error;
    try {
      logger.i('Sigining in with email and password');
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user!;
    } on FirebaseAuthException catch (e) {
      error = e;
    }
    return [error, user];
  }

  Future<bool> signOut() async {
    try {
      await _auth.signOut();
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    UserCredential? userCredential;

    try {
      userCredential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password is weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print('Error: $e');
    }
    return userCredential!.user!;
  }
}
