import 'package:luna/features/firebase_authentication/data/models/user_profile.dart';

class UserProfileService{
  late final UserProfile _userProfile;
  UserProfile get userProfile => _userProfile;

  void setUser(UserProfile userProfile){
    _userProfile = userProfile;
  }
}