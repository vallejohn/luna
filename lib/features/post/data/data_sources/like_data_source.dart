import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:luna/core/services/firebase_service.dart';
import 'package:luna/core/utils/params.dart';

abstract class LikeDataSource{
  final FirebaseService firebaseService;

  LikeDataSource({
    required this.firebaseService,
  });

  Future<Stream<QuerySnapshot>> getAllLikes(String postID);
  Future<bool> addLike(AddLikeData addLikeData);
}