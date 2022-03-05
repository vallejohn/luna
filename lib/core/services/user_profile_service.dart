import 'dart:async';

import 'package:luna/features/firebase_authentication/data/models/user_profile.dart';
import 'package:rxdart/rxdart.dart';

//TODO Find a better solution to this
class UserProfileService{
  final _controller = BehaviorSubject<UserProfile>();
  late UserProfile _user;
  UserProfile get user => _user;
  Stream<UserProfile> get userStream => _controller.stream;

  Stream<UserProfile> setUser(UserProfile userProfile){
    _user = userProfile;
    _controller.sink.add(userProfile);
    return _controller.stream;
  }

  void close(){
    _controller.close();
  }
}