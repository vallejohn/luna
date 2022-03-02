import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/core/utils/errors.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/post/data/data_sources/post_data_source.dart';

class PostDataSourceImpl extends PostDataSource{
  PostDataSourceImpl({
    required FirebaseFirestore firestore,
    required CollectionReference collectionReference,
    required FirebaseStorage firebaseStorage
  }) : super(
      firestore: firestore,
      postsCollection: collectionReference,
      firebaseStorage: firebaseStorage
  );

  @override
  Future<DataState<Stream<QuerySnapshot>, PostError>> getAllPosts() async{
    return DataState.success(data: postsCollection.snapshots());
  }

  @override
  Future<DataState<PickedFile, NoError>> browsePostCoverImage() async{

    // ignore: invalid_use_of_visible_for_testing_member
    PickedFile? image = await ImagePicker.platform.pickImage(
        source: ImageSource.gallery,
        imageQuality: 50
    );

    if(image != null){
      return DataState.success(data: image);
    }else{
      return DataState.failed(error: NoError());
    }
  }

  @override
  Future<DataState<DocumentReference, NoError>> addPost(AddPostData addPostData) {
    // TODO: implement addPost
    throw UnimplementedError();
  }
}