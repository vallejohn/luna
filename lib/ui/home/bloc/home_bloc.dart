import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:luna/app/app.locator.dart';
import 'package:luna/models/user_profile.dart';
import 'package:luna/services/firestore_service.dart';
import 'package:luna/services/post_service.dart';
import 'package:luna/services/user_profile_service.dart';
import 'package:stacked_services/stacked_services.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  final Logger _logger = Logger();
  final _navigationService = locator<NavigationService>();
  final _postService = locator<PostService>();

  final _userProfileService;
  final _fireStoreService;

  HomeBloc({
    required UserProfileService userProfileService, 
    required FirestoreService firestoreService
  }) : 
  _userProfileService = userProfileService, 
  _fireStoreService = firestoreService, 
  super(_Initial(
    currentUser: userProfileService.currentUser, 
    postStream: firestoreService.getPostsQuerySnapshot()
  )) {
    on<_Started>(_onStarted);
    on<_OnNavigate>(_onNavigate);
  }

  void _onNavigate(_OnNavigate event, Emitter<HomeState> emit){
    _logger.i('Navigating to ${event.routeName}');
    _postService.setPostID(event.postID);
    _navigationService.navigateTo(event.routeName);
  }

  void _onStarted(_Started event, Emitter<HomeState> emit){
    
  }
}
