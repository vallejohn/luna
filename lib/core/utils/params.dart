import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';
import 'package:luna/features/firebase_authentication/data/models/user_profile.dart';

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
  final UserProfile? user;

  const AddPostData({required this.image, required this.title, required this.content, required this.user});

  @override
  List<Object?> get props => [image, title, content];
}

class UserProfileParam extends Equatable{
  final Stream<UserProfile> userStream;
  final UserProfile user;

  const UserProfileParam({required this.userStream, required this.user});

  @override
  List<Object?> get props => [userStream, user];
}