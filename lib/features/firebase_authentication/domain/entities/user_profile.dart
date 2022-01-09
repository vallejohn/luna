import 'package:equatable/equatable.dart';

class UserProfile extends Equatable {
  final String authID;
  final String profileImageURL;
  final String username;
  final String email;
  final String firstname;
  final String lastname;

  const UserProfile({
    required this.authID,
    required this.profileImageURL,
    required this.username,
    required this.email,
    required this.firstname,
    required this.lastname,
  });

  @override
  List<Object?> get props => [
    authID,
    profileImageURL,
    username,
    email,
    firstname,
    lastname
  ];
}
