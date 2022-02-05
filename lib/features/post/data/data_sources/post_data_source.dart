import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/features/post/data/models/post_model.dart';

abstract class PostDataSource{
  final FirebaseFirestore firestore;
  final CollectionReference collection;

  PostDataSource({
    required this.firestore,
    required this.collection
  });

  Future<DataState<PostModel, PostError>> getPosts();
}