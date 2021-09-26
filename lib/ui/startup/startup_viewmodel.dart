import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:luna/app/app.locator.dart';
import 'package:luna/app/app.router.dart';
import 'package:luna/models/user_profile.dart';
import 'package:luna/services/firebase_auth_service.dart';
import 'package:luna/services/firebase_storage_service.dart';
import 'package:luna/services/firestore_service.dart';
import 'package:luna/services/user_profile_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _firestoreService = locator<FirestoreService>();
  final _firebaseAuthService = locator<FirebaseAuthService>();
  final _userProfileService = locator<UserProfileService>();
  final _firebaseStorageService = locator<FirebaseStorageService>();
  Logger logger = Logger();

  Future initStartupView() async {
    _firestoreService.initialize();
    _firebaseAuthService.initialize();
    _firebaseStorageService.initialize();
    await getCurrentUser();
  }

  Future getCurrentUser() async {
    try {
      logger.i('Trying to fetch user');
      User? user = _firebaseAuthService.getCurrentUser();
      UserProfile userProfile =
          await _firestoreService.getUserFromCollection(user!.uid);
      _userProfileService.setCurrentUser(userProfile);

      Future.delayed(Duration.zero, () async {
        await _navigationService.replaceWith(Routes.homeView);
      });
    } catch (e) {
      logger.e('No user was fetched: $e -- Redirecting to LoginView');
      Future.delayed(Duration.zero, () async {
        await _navigationService.replaceWith(Routes.loginView);
      });
    }
  }
}
