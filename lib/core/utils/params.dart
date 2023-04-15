import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:luna/features/firebase_authentication/data/models/user_profile.dart';
import 'package:luna/features/post/data/models/comment.dart';
import 'package:luna/features/post/data/models/like.dart';
import 'package:luna/features/post/data/models/recent_comment.dart';

class LoginCredentials extends Equatable {
  final String email;
  final String password;

  const LoginCredentials({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}

class SignUpCredentials extends Equatable {
  final File? imagePath;
  final String username;
  final String firstName;
  final String lastName;
  final String email;
  final String password;

  const SignUpCredentials({required this.username, required this.firstName, required this.lastName, required this.email, required this.password, this.imagePath});

  @override
  List<Object?> get props => [email, password, username, firstName, lastName, imagePath];
}

class AddPostData extends Equatable {
  final String imagePath;
  final String title;
  final String content;
  final UserProfile? user;

  const AddPostData({required this.imagePath, required this.title, required this.content, required this.user});

  @override
  List<Object?> get props => [imagePath, title, content];
}

class AddCommentData extends Equatable {
  final Comment comment;
  final String postID;
  final int commentCount;

  const AddCommentData({required this.postID, required this.commentCount, required this.comment});

  @override
  List<Object?> get props => [comment, postID, commentCount];
}

class AddLikeData extends Equatable {
  final Like like;
  final String postID;
  final int likeCount;

  const AddLikeData({required this.postID, required this.likeCount, required this.like});

  @override
  List<Object?> get props => [like, postID, likeCount];
}

class UserProfileParam extends Equatable {
  final UserProfile user;

  const UserProfileParam({required this.user});

  @override
  List<Object?> get props => [user];
}

class ImageUploadParam extends Equatable {
  final String userID;
  final String imagePath;

  const ImageUploadParam({required this.userID, required this.imagePath});

  @override
  List<Object?> get props => [userID, imagePath];
}
