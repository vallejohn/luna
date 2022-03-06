import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'package:luna/core/services/firebase_service.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/core/utils/errors.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/core/utils/statics/collection.dart';
import 'package:luna/features/post/data/data_sources/post_data_source.dart';
import 'package:luna/features/post/data/models/post.dart';

class PostDataSourceImpl extends PostDataSource {
  PostDataSourceImpl({
    required FirebaseService firebaseService,
  }) : super(firebaseService: firebaseService);

  @override
  Future<DataState<Stream<QuerySnapshot>, PostError>> getAllPosts() async {
    return DataState.success(data: firebaseService.firebaseFirestore.collection(Collection.posts).snapshots());
  }

  @override
  Future<DataState<PickedFile, NoError>> browsePostCoverImage() async {
    // ignore: invalid_use_of_visible_for_testing_member
    PickedFile? image = await ImagePicker.platform.pickImage(source: ImageSource.gallery, imageQuality: 50);

    if (image != null) {
      return DataState.success(data: image);
    } else {
      return DataState.failed(error: NoError());
    }
  }

  @override
  Future<DataState<DocumentReference, NoError>> addPost(AddPostData addPostData) async {

    try{
      late DocumentReference documentReference;
      await firebaseService.firebaseFirestore.collection(Collection.posts).add(Post(
          author: addPostData.user!.toJson(),
          title: addPostData.title,
          content: addPostData.content,
          commentCount: 0,
          coverImageURL: addPostData.imagePath!)
          .toJson()).then((reference) => documentReference = reference);
      return DataState.success(data: documentReference);
    }catch(e){
      return DataState.failed(error: NoError());
    }
  }
}
