import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageService {
  late final FirebaseStorage _firebaseStorage;

  void initialize() {
    _firebaseStorage = FirebaseStorage.instance;
    //Test commit
  }
}
