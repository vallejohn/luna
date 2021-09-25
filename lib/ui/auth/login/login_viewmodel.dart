import 'package:firebase_auth/firebase_auth.dart';
import 'package:luna/app/app.locator.dart';
import 'package:luna/app/app.router.dart';
import 'package:luna/services/firebase_auth_service.dart';
import 'package:luna/services/firestore_service.dart';
import 'package:luna/services/user_profile_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel{
  final _navigationService = locator<NavigationService>();
  final _firebaseAuthService = locator<FirebaseAuthService>();
  final _userProfileService = locator<UserProfileService>();
  final _firestoreService = locator<FirestoreService>();

  void goToRegisterView(){
    _navigationService.navigateTo(Routes.registerView);
  }

  void login({required String email, required String password}) async{
    setBusy(true);
    await _firebaseAuthService.signInWithEmailAndPassword(
        email: email,
        password: password
    ).then((User? user) async{
      if(user != null){
        print('User ID: ${user.uid}');
        _userProfileService.setCurrentUser(await _firestoreService.getUserFromCollection(user.uid));
        await _navigationService.replaceWith(Routes.homeView);
      }else{
        print('Something went wrong');
      }
    });
    setBusy(false);
  }
}