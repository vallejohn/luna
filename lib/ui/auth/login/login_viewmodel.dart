import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:luna/app/app.locator.dart';
import 'package:luna/app/app.router.dart';
import 'package:luna/services/firebase_auth_service.dart';
import 'package:luna/services/firestore_service.dart';
import 'package:luna/services/user_profile_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _firebaseAuthService = locator<FirebaseAuthService>();
  final _userProfileService = locator<UserProfileService>();
  final _firestoreService = locator<FirestoreService>();

  Logger logger = Logger();

  bool _emailError = false;
  bool _passwordError = false;

  bool get emailError => _emailError;
  bool get passwordError => _passwordError;

  void goToRegisterView() {
    _navigationService.navigateTo(Routes.registerView);
  }

  void login({required String email, required String password}) async {
    setBusy(true);
    await _firebaseAuthService
        .signInWithEmailAndPassword(email: email, password: password)
        .then((List value) async {
      User? user = value[1];
      FirebaseAuthException? error = value[0];

      if (user != null) {
        _userProfileService.setCurrentUser(
            await _firestoreService.getUserFromCollection(user.uid));
        logger.i('Login successful with user ID: ${user.uid}');
        await _navigationService.replaceWith(Routes.homeView);
      } else if (user == null && error != null) {
        if (error.code == 'user-not-found') {
          _emailError = true;
          logger.w('User not found!');
        } else if (error.code == 'wrong-password') {
          _passwordError = true;
          logger.w('Wrong password!');
        }
      }
    });
    setBusy(false);
    notifyListeners();
  }
}
