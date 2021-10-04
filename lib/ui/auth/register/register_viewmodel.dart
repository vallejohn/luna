import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:luna/app/app.locator.dart';
import 'package:luna/app/app.router.dart';
import 'package:luna/models/user_profile.dart';
import 'package:luna/services/firebase_auth_service.dart';
import 'package:luna/services/firestore_service.dart';
import 'package:luna/services/image_picker_service.dart';
import 'package:luna/ui/auth/authentication_viewmodel.dart';
import 'package:luna/ui/auth/register/register_view.form.dart';

class RegisterViewModel extends AuthenticationViewModel {
  RegisterViewModel() : super(successRoute: Routes.homeView);

  final _firebaseAuthService = locator<FirebaseAuthService>();
  final _firestoreService = locator<FirestoreService>();
  final _imagePickerService = locator<ImagePickerService>();

  final Logger logger = Logger();

  bool _usernameError = false;
  bool _firstnameError = false;
  bool _lastnameError = false;
  bool _emailError = false;
  bool _passwordError = false;
  bool _confirmPasswordError = false;
  File? _profilePhoto;

  bool get usernameError => _usernameError;
  bool get firstnameError => _firstnameError;
  bool get lastnameError => _lastnameError;
  bool get emailError => _emailError;
  bool get passwordError => _passwordError;
  bool get confirmPasswordError => _confirmPasswordError;
  File? get profilePhoto => _profilePhoto;

  @override
  Future<UserCredential> runAuthentication() async{
    UserCredential? userCredential;
    try{
      userCredential = await _firebaseAuthService.createUserWithEmailAndPassword(
        email: emailAddressValue!, 
        password: passwordValue!);

      await _firestoreService.addUserToCollection(UserProfile(
        authID: userCredential!.user!.uid,
        username: usernameValue,
        email: emailAddressValue,
        firstname: firstnameValue,
        lastname: lastnameValue,
      ));  
    }on FirebaseAuthException catch(e){
      if(e.code =='weak-password'){
        logger.e('The password is weak!');
        setValidationMessage('The password is weak!');
      }else if(e.code == 'email-already-in-use'){
        logger.e('Email is already existing');
        setValidationMessage('Email is already existing');
      }
    }
    return userCredential!;
  }

  @override
  bool isRequiredFieldsError() {
    return false;
  }

  void loadProfileImageFromGallery() async{
    try{
      PickedFile? image = await _imagePickerService.loadProfileImageFromGallery();
      if(image != null){
        _profilePhoto = File(image.path);
      }
    }catch(e){
      logger.e('Error: $e');
    }
    notifyListeners();
  }
}
