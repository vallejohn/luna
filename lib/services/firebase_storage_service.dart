import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:logger/logger.dart';

class FirebaseStorageService {
  late final FirebaseStorage _firebaseStorage;

  Logger logger = Logger();

  void initialize() {
    _firebaseStorage = FirebaseStorage.instance;
  }

  Future<String> uploadProfilePhotoToFirebaseStorage({required String uID, required File file}) async{
    String? profileImageURL;
    try{
      UploadTask uploadTask = _firebaseStorage.ref().child('images/users/$uID/profile_photos/${file.path}').putFile(file);
      TaskSnapshot taskSnapshot = await uploadTask.then((TaskSnapshot taskSnapshot) => taskSnapshot);
      profileImageURL = await taskSnapshot.ref.getDownloadURL();
    }on FirebaseException catch(e){
      logger.e(e);
    }

    return profileImageURL!;
  }

    Future<String> uploadPostCoverImageToFirebaseStorage({required String uID, required File file}) async{
    String? postCoverImageURL;
    try{
      UploadTask uploadTask = _firebaseStorage.ref().child('images/users/$uID/post_covers/${file.path}').putFile(file);
      TaskSnapshot taskSnapshot = await uploadTask.then((TaskSnapshot taskSnapshot) => taskSnapshot);
      postCoverImageURL = await taskSnapshot.ref.getDownloadURL();
    }on FirebaseException catch(e){
      logger.e(e);
    }

    return postCoverImageURL!;
  }
}
