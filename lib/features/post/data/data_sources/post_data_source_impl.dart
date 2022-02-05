import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/features/post/data/data_sources/post_data_source.dart';
import 'package:luna/features/post/data/models/post_model.dart';

class PostDataSourceImpl extends PostDataSource{
  PostDataSourceImpl({
    required FirebaseFirestore firestore,
    required CollectionReference collectionReference
  }) : super(
      firestore: firestore,
      collection: collectionReference
  );

  @override
  Future<DataState<PostModel, PostError>> getPosts() {
    // TODO: implement getPosts

    throw UnimplementedError();
  }
}