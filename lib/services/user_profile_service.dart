import 'package:luna/models/user_profile.dart';

class UserProfileService{
  UserProfile? _currentUser;

  UserProfile get currentUser => _currentUser!;

  void setCurrentUser(UserProfile userProfile){
    _currentUser = userProfile;
  }
}