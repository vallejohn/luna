

abstract class AuthenticationModuleException implements Exception{
  final String message;

  AuthenticationModuleException({required this.message});
}

class WeakPasswordException extends AuthenticationModuleException{
  WeakPasswordException() : super(message: 'Password provided is too weak.');
}

class EmailExistException extends AuthenticationModuleException{
  EmailExistException() : super(message: 'Account already exists for this email.');
}