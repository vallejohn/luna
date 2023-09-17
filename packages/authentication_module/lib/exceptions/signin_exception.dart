

abstract class SignInException implements Exception{
  final String message;

  SignInException({required this.message});
}

class UserNotFoundException extends SignInException{
  UserNotFoundException() : super(message: 'Username invalid');
}

class InvalidPasswordException extends SignInException{
  InvalidPasswordException() : super(message: 'Password provided was incorrect');
}