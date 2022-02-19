import 'dart:async';

import 'package:luna/features/firebase_authentication/data/models/user_profile.dart';

class UserProfileService{
  late final UserProfile _userProfile;
  UserProfile get userProfile => _userProfile;

  StreamController<UserProfile> _profileStream = StreamController<UserProfile>();
  StreamController<UserProfile> get profileStream => _profileStream;

  void setUser(UserProfile userProfile){
    _profileStream.add(userProfile);
    _userProfile = userProfile;
  }
}