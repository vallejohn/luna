import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path_provider/path_provider.dart';

class FirebaseStorageService {
  late final FirebaseStorage _firebaseStorage;

  void initialize() {
    _firebaseStorage = FirebaseStorage.instance;
    //Test commit
  }
}
