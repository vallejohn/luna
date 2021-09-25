import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:luna/app/app.locator.dart';
import 'package:luna/app/app.router.dart';
import 'package:luna/models/user_profile.dart';
import 'package:luna/services/firebase_auth_service.dart';
import 'package:luna/services/firestore_service.dart';
import 'package:luna/services/user_profile_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class RegisterViewModel extends BaseViewModel{
  final _firebaseAuthService = locator<FirebaseAuthService>();
  final _firestoreService = locator<FirestoreService>();
  final _navigationService = locator<NavigationService>();
  final _userProfileService = locator<UserProfileService>();

  void register({
    required String username,
    required String firstname,
    required String lastname,
    required String email,
    required String password}) async{

    setBusy(true);
    await _firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password
    ).then((User? user) async{
      if(user != null){
        await _firestoreService.addUserToCollection(UserProfile(
          authID: user.uid,
          username: username,
          email: email,
          firstname: firstname,
          lastname: lastname,
        )).then((DocumentReference documentReference) {
          documentReference.get().then((DocumentSnapshot documentSnapshot) {
            UserProfile userProfile = documentSnapshot.data() as UserProfile;
            _userProfileService.setCurrentUser(userProfile);
          });
        });
        await _navigationService.replaceWith(Routes.homeView);
      }else{
        print('Error while registering user');
      }
    });
    setBusy(false);
  }
}