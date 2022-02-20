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
  /// This static method will fetch [String] error message based on [LoginError] enum
  static String getStringMessageFromErrorCode(LoginError errorCode){
    String errorMessage = '';
    switch(errorCode){
      case LoginError.invalidEmail:
        errorMessage = 'Invalid email';
        break;
      case LoginError.userDisabled:
        errorMessage = 'User disabled';
        break;
      case LoginError.userNotFound:
        errorMessage = 'User not found';
        break;
      case LoginError.wrongPassword:
        errorMessage = 'Wrong password';
        break;
      case LoginError.unknown:
        errorMessage = 'Unknown error';
        break;
    }
    return errorMessage;
  }

  static bool isEmailError(LoginError errorCode){
    if(errorCode == LoginError.invalidEmail || errorCode == LoginError.userDisabled || errorCode == LoginError.userNotFound){
      return true;
    }else{
      return false;
    }
  }
}

class NoError{}