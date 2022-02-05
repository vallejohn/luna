import 'package:luna/features/firebase_authentication/data/models/user_profile_model.dart';

class UserProfileService{
  late final UserProfileModel _userProfileModel;
  UserProfileModel get userProfile => _userProfileModel;

  void setUser(UserProfileModel userProfileModel){
    _userProfileModel = userProfileModel;
  }
}