import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

class LoginCredentials extends Equatable{
  final String email;
  final String password;

  const LoginCredentials({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}

class AddPostData extends Equatable{
  final PickedFile? image;
  final String title;
  final String content;

  const AddPostData({required this.image, required this.title, required this.content});

  @override
  List<Object?> get props => [image, title, content];
}