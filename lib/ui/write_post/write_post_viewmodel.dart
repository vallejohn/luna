import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:luna/app/app.locator.dart';
import 'package:luna/app/app.router.dart';
import 'package:luna/models/post.dart';
import 'package:luna/models/user_profile.dart';
import 'package:luna/services/firebase_storage_service.dart';
import 'package:luna/services/firestore_service.dart';
import 'package:luna/services/image_picker_service.dart';
import 'package:luna/services/user_profile_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class WritePostViewModel extends BaseViewModel{
  final String title = 'Write Your Story';
  final _firestoreService = locator<FirestoreService>();
  final _navigationService = locator<NavigationService>();
  final _userProfileService = locator<UserProfileService>();
  final _imagePickerService = locator<ImagePickerService>();
  final _firebaseStorageService = locator<FirebaseStorageService>();

  UserProfile? _currentUser;
  UserProfile get currentUser => _currentUser!;

  File? _postImageCover;
  File? get postImageCover => _postImageCover;

  Logger logger = Logger();

  void initWritePost(){
    _currentUser = _userProfileService.currentUser;
    notifyListeners();
  }

  void addPost(String title, String content) async{
    setBusy(true);

  String postImageCoverURL = await _firebaseStorageService.uploadPostCoverImageToFirebaseStorage(
        uID: _currentUser!.authID!, 
        file: _postImageCover!);

    await _firestoreService.addPost(
        Post(
          title: title,
          coverImageURL: postImageCoverURL,
          content: content,
          commentCount: 0,
          author: _userProfileService.currentUser.toJson()
        )
    ).then((postRef) {
      _navigationService.replaceWith(Routes.postView, arguments: postRef.id);
    });
    setBusy(false);
    notifyListeners();
   // _navigationService.replaceWith(Routes.homeView);
  }

    void loadPostImageCoverFromGallery() async{
    try{
      PickedFile? image = await _imagePickerService.loadPostImageCoverFromGallery();
      if(image != null){
        _postImageCover = File(image.path);
      }
    }catch(e){
      logger.e('Error: $e');
    }
    notifyListeners();
  }

  void goToSearchLocation(){
    _navigationService.navigateTo(Routes.locationSearchView);
  }
}