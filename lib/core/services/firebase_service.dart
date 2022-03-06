import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../states/data_state.dart';

class FirebaseService{
  late final FirebaseAuth _firebaseAuth;
  late final FirebaseFirestore _firebaseFirestore;
  late final FirebaseStorage _firebaseStorage;

  FirebaseAuth get firebaseAuth => _firebaseAuth;
  FirebaseFirestore get firebaseFirestore => _firebaseFirestore;
  FirebaseStorage get firebaseStorage => _firebaseStorage;

  void init(){
    _firebaseFirestore = FirebaseFirestore.instance;
    _firebaseAuth = FirebaseAuth.instance;
    _firebaseStorage = FirebaseStorage.instance;
  }

  Future<DataState<String, FirebaseException>> uploadImage({required String uID, required File file, required String storageLocation}) async{
    String? postCoverImageURL;
    try {
      UploadTask uploadTask = _firebaseStorage.ref().child('images/users/$uID/$storageLocation/${file.path}').putFile(file);
      TaskSnapshot taskSnapshot = await uploadTask.then((TaskSnapshot taskSnapshot) => taskSnapshot);
      postCoverImageURL = await taskSnapshot.ref.getDownloadURL();

      return DataState.success(data: postCoverImageURL);
    } on FirebaseException catch (e) {
      return DataState.failed(error: e);
    }
  }
}