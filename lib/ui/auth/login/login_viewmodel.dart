import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:luna/app/app.locator.dart';
import 'package:luna/app/app.router.dart';
import 'package:luna/services/firebase_auth_service.dart';
import 'package:luna/services/firestore_service.dart';
import 'package:luna/services/user_profile_service.dart';
import 'package:luna/ui/auth/authentication_viewmodel.dart';
import 'package:luna/ui/auth/login/login_view.form.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends AuthenticationViewModel {
  LoginViewModel() : super(successRoute: Routes.homeView);

  final _navigationService = locator<NavigationService>();
  final _firebaseAuthService = locator<FirebaseAuthService>();
  final _userProfileService = locator<UserProfileService>();
  final _firestoreService = locator<FirestoreService>();

  Logger logger = Logger();

  bool _emailError = false;
  bool _passwordError = false;
  bool _hidePassword = true;

  bool get emailError => _emailError;
  bool get passwordError => _passwordError;
  bool get hidePassword => _hidePassword;

  void goToRegisterView() {
    _navigationService.navigateTo(Routes.registerView);
  }

  void onShowPasswordTap() {
    _hidePassword = _hidePassword ? false : true;
    notifyListeners();
  }

  @override
  Future<UserCredential> runAuthentication() async{
    UserCredential? userCredential;
    try{
      userCredential = await _firebaseAuthService.signInWithEmailAndPassword(
      email: usernameOrEmailValue!, 
      password: passwordValue!);
    } on FirebaseAuthException catch(e){
      if (e.code == 'user-not-found') {
          _emailError = true;
          setValidationMessage('Invalid username or email');
          logger.w('User not found!');
        } else if (e.code == 'wrong-password') {
          _passwordError = true;
          setValidationMessage('Incorrect Password');
          logger.w('Wrong password!');
        }
    }
    notifyListeners();
    return userCredential!;
  }
}
