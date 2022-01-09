import 'package:luna/features/firebase_authentication/domain/entities/user_profile.dart';

class UserProfileModel extends UserProfile {
  const UserProfileModel({
    required String authID,
    required String profileImageURL,
    required String username,
    required String email,
    required String firstname,
    required String lastname,
  }) : super(
      authID: authID,
      profileImageURL: profileImageURL,
      username: username,
      email: email,
      firstname: firstname,
      lastname: lastname
  );

  factory UserProfileModel.fromJson(Map<String,dynamic> json){
    return UserProfileModel(
        authID: json['authID'],
        profileImageURL: json['profileImageURL'],
        username: json['username'],
        email: json['email'],
        firstname: json['firstname'],
        lastname: json['lastname'],
    );
  }

  Map<String, dynamic> toJson(){
    return{
      'authID' : authID,
      'profileImageURL' : profileImageURL,
      'username' : username,
      'email' : email,
      'firstname' : firstname,
      'lastname' : lastname,
    };
  }
}
