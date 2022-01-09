import 'package:firebase_auth/firebase_auth.dart';
import 'enums.dart';

class AuthError{
  /// this static method will fetch [LoginError] enums based on
  /// [FirebaseAuthException].
  /// this will return a default value of [LoginError.unknown] if [code] is unidentified.
  static LoginError getLoginErrorFromCode(String code){
    LoginError loginError = LoginError.unknown;
    switch(code){
      case 'invalid-email':{
        loginError = LoginError.invalidEmail;
      }break;
      case 'user-disabled':{
        loginError = LoginError.userDisabled;
      }break;
      case 'user-not-found':{
        loginError = LoginError.userNotFound;
      }break;
      case 'wrong-password':{
        loginError = LoginError.wrongPassword;
      }
    }
    return loginError;
  }
}