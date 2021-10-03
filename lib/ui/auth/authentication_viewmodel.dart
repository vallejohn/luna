import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:luna/app/app.locator.dart';
import 'package:luna/services/firestore_service.dart';
import 'package:luna/services/user_profile_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

abstract class AuthenticationViewModel extends FormViewModel {
  final String successRoute;
  AuthenticationViewModel({required this.successRoute});
  final _userProfileService = locator<UserProfileService>();
  final _firestoreService = locator<FirestoreService>();
  final _navigationService = locator<NavigationService>();

  Logger logger = Logger();

  @override
  void setFormStatus() {}

  Future saveData() async {
    try {
      UserCredential? userCredential = await runBusyFuture(runAuthentication());
      _userProfileService.setCurrentUser(await _firestoreService.getUserFromCollection(userCredential!.user!.uid));
      logger.i('Login successful with user ID: ${userCredential.user!.uid}');
      await _navigationService.replaceWith(successRoute);
    }catch (e) {
      logger.e('We have an error: $e');
    }
  }

  Future<UserCredential> runAuthentication();
}
