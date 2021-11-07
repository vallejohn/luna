import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:luna/app/app.locator.dart';
import 'package:luna/models/user_profile.dart';
import 'package:luna/services/firebase_auth_service.dart';
import 'package:luna/services/firestore_service.dart';
import 'package:luna/services/user_profile_service.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final Logger _logger = Logger();
  final _firebaseAuthService = locator<FirebaseAuthService>();
  final _firestoreService = locator<FirestoreService>();
  final _userProfileService = locator<UserProfileService>();

  AuthenticationBloc() : super(_Initial()) {
    on<_Startup>(_onStartup);
  }

  Future<void> _onStartup(_Startup event, Emitter<AuthenticationState> emit) async{
    _firebaseAuthService.initialize();
    _firestoreService.initialize();

    try {
      if (_firebaseAuthService.isSignedIn()) {
        _logger.i('User is signed in');
        User? user = _firebaseAuthService.getUser();
        UserProfile userProfile = await _firestoreService.getUserFromCollection(user!.uid);
        _userProfileService.setCurrentUser(userProfile);

        emit(AuthenticationState.authenticated());
      } else {
        _logger.w('User is not signed in');
        emit(AuthenticationState.unAuthenticated());
      }
    } catch (e) {
      _logger.e('Error while fetching current user: $e');
    }
  }
}
