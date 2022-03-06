import 'package:equatable/equatable.dart';
import 'package:luna/features/firebase_authentication/data/models/user_profile.dart';

class LoginCredentials extends Equatable{
  final String email;
  final String password;

  const LoginCredentials({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}

class AddPostData extends Equatable{
  final String? imagePath;
  final String title;
  final String content;
  final UserProfile? user;

  const AddPostData({required this.imagePath, required this.title, required this.content, required this.user});

  @override
  List<Object?> get props => [imagePath, title, content];
}

class UserProfileParam extends Equatable{
  final Stream<UserProfile> userStream;
  final UserProfile user;

  const UserProfileParam({required this.userStream, required this.user});

  @override
  List<Object?> get props => [userStream, user];
}

class ImageUploadParam extends Equatable{
  final String userID;
  final String imagePath;

  const ImageUploadParam({required this.userID, required this.imagePath});

  @override
  List<Object?> get props => [userID, imagePath];
}