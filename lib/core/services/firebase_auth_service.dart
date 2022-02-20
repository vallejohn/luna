import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

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
}