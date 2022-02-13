import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/utils/enums.dart';

abstract class PostDataSource{
  final FirebaseFirestore firestore;
  final CollectionReference postsCollection;

  PostDataSource({
    required this.firestore,
    required this.postsCollection
  });

  Future<DataState<Stream<QuerySnapshot>, PostError>> getAllPosts();
}