import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:luna/app/app.locator.dart';
import 'package:luna/app/app.router.dart';
import 'package:luna/models/user_profile.dart';
import 'package:luna/services/firebase_auth_service.dart';
import 'package:luna/services/firestore_service.dart';
import 'package:luna/services/user_profile_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class RegisterViewModel extends BaseViewModel {
  final _firebaseAuthService = locator<FirebaseAuthService>();
  final _firestoreService = locator<FirestoreService>();
  final _navigationService = locator<NavigationService>();
  final _userProfileService = locator<UserProfileService>();

  final Logger logger = Logger();

  void register({required String username, required String firstname, required String lastname, required String email, required String password}) async {
    await runBusyFuture(_firebaseAuthService.createUserWithEmailAndPassword(email: email, password: password)).then((List value) async {
      UserCredential? userCredential = value[0];
      FirebaseAuthException? error = value[1];

      if (error != null) {
        if (error.code == 'weak-password') {
          logger.w('Weak password');
        } else if (error.code == 'email-already-in-use') {
          logger.w('Email already exist!');
        } else {
          logger.i('Credentials are validated.');
        }
      } else {
        logger.i('No FirebaseAuthException errors found');
        if (userCredential != null) {
          await _firestoreService
              .addUserToCollection(UserProfile(
            authID: userCredential.user!.uid,
            username: 'username',
            email: email,
            firstname: firstname,
            lastname: lastname,
          ))
              .then((DocumentReference documentReference) {
            documentReference.get().then((DocumentSnapshot documentSnapshot) {
              UserProfile userProfile = documentSnapshot.data() as UserProfile;
              _userProfileService.setCurrentUser(userProfile);
            });
          });
          await _navigationService.replaceWith(Routes.homeView);
        } else {
          logger.i('Error while registering user');
        }
      }
    });
  }
}
