import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService{
  late final FirebaseAuth _auth;

  void initialize(){
    _auth = FirebaseAuth.instance;
  }

  User? getCurrentUser(){
    return _auth.currentUser!;
  }

  Future<User> signInWithEmailAndPassword({required String email, required String password}) async{
    User? user;
    try{
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      user = userCredential.user!;
    }on FirebaseAuthException catch(e){
      if(e.code == 'user-not-found'){
        print('No user found for that email.');
      }else if(e.code == 'wrong-password'){
        print('Wrong password provided for that user.');
      }
    }
    return user!;
  }

  Future<bool> signOut() async{
    try{
      await _auth.signOut();
      return true;
    }catch(e){
      return false;
    }
  }

  Future<User> createUserWithEmailAndPassword({required String email, required String password}) async{
    UserCredential? userCredential;

    try{
      userCredential = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password
      );
    }on FirebaseAuthException catch(e){
      if(e.code == 'weak-password'){
        print('The password is weak.');
      }else if(e.code == 'email-already-in-use'){
        print('The account already exists for that email.');
      }
    }catch(e){
      print('Error: $e');
    }
    return userCredential!.user!;
  }
}