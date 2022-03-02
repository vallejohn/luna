import 'dart:async';

import 'package:luna/features/firebase_authentication/data/models/user_profile.dart';
import 'package:rxdart/rxdart.dart';

//TODO Find a better solution to this
class UserProfileService{
  final _controller = BehaviorSubject<UserProfile>();
  Sink<UserProfile> get userSink => _controller.sink;
  Stream<UserProfile> get userStream => _controller.stream;

  void setUser(UserProfile userProfile){
    userSink.add(userProfile);
  }

  void close(){
    _controller.close();
  }
}