import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:luna/core/utils/statics/collection.dart';
import 'package:luna/core/utils/statics/storage.dart';

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

  Future<String> uploadImage({required String uID, required File file, required Storage storageLocation}) async{
    String? postCoverImageURL;
    UploadTask uploadTask = _firebaseStorage.ref().child('images/users/$uID/${storageLocation.path}/${file.path}').putFile(file);
    TaskSnapshot taskSnapshot = await uploadTask.then((TaskSnapshot taskSnapshot) => taskSnapshot);
    postCoverImageURL = await taskSnapshot.ref.getDownloadURL();
    return postCoverImageURL;
  }

  Future<DocumentReference<Map<String, dynamic>>> addToCollection(Collection collection, Map<String, dynamic> object)async {
    return await _firebaseFirestore.collection(collection.value).add(object);
  }
}