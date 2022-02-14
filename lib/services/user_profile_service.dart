import 'package:luna/features/firebase_authentication/data/models/user_profile.dart';

class UserProfileService{
  UserProfile? _currentUser;

  UserProfile get currentUser => _currentUser!;

  void setCurrentUser(UserProfile userProfile){
    _currentUser = userProfile;
  }
}