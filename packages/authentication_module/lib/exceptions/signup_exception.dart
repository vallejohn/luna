

abstract class SignupException implements Exception{
  final String message;

  SignupException({required this.message});
}

class WeakPasswordException extends SignupException{
  WeakPasswordException() : super(message: 'Password provided is too weak.');
}

class EmailExistException extends SignupException{
  EmailExistException() : super(message: 'Account already exists for this email.');
}