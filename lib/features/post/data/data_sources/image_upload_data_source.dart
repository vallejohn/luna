import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:luna/core/services/firebase_service.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/utils/params.dart';

abstract class ImageUploadDataSource{
  final FirebaseService firebaseService;

  ImageUploadDataSource({
    required this.firebaseService
  });

  Future<DataState<String, FirebaseException>> uploadImage(ImageUploadParam param);
}