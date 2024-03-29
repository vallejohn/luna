import 'package:get_it/get_it.dart';
import 'package:luna/core/services/firebase_service.dart';
import 'package:luna/core/utils/statics/collection.dart';
import 'package:luna/features/firebase_authentication/data/data_sources/auth_data_source.dart';
import 'package:luna/features/firebase_authentication/data/data_sources/auth_data_source_impl.dart';
import 'package:luna/features/firebase_authentication/data/repositories/auth_repository_impl.dart';
import 'package:luna/features/firebase_authentication/domain/repositories/auth_repository.dart';
import 'package:luna/features/firebase_authentication/domain/usecases/get_active_user.dart';
import 'package:luna/features/firebase_authentication/domain/usecases/sign_out.dart';
import 'package:luna/features/firebase_authentication/domain/usecases/signin_with_email_and_password.dart';
import 'package:luna/features/post/data/data_sources/comment_data_source.dart';
import 'package:luna/features/post/data/data_sources/comment_data_source_impl.dart';
import 'package:luna/features/post/data/data_sources/like_data_source_impl.dart';
import 'package:luna/features/post/data/data_sources/post_data_source.dart';
import 'package:luna/features/post/data/data_sources/post_data_source_impl.dart';
import 'package:luna/features/post/data/repositories/comment_repository_impl.dart';
import 'package:luna/features/post/data/repositories/like_repository_impl.dart';
import 'package:luna/features/post/data/repositories/post_repository_impl.dart';
import 'package:luna/features/post/domain/repositories/comment_repository.dart';
import 'package:luna/features/post/domain/repositories/like_repository.dart';
import 'package:luna/features/post/domain/repositories/post_repository.dart';
import 'package:luna/features/post/domain/usecases/add_comment.dart';
import 'package:luna/features/post/domain/usecases/add_like.dart';
import 'package:luna/features/post/domain/usecases/add_post.dart';
import 'package:luna/features/post/domain/usecases/add_post_cover_image.dart';
import 'package:luna/features/post/domain/usecases/get_all_comments.dart';
import 'package:luna/features/post/domain/usecases/get_all_posts.dart';

import 'features/post/data/data_sources/like_data_source.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async{

  getIt.registerLazySingleton(() => FirebaseService());

  getIt<FirebaseService>().init();

  _setUpFirebaseAuthFeature();
  _setUpPostFeature();
  _setUpCommentFeature();
  _setUpLikeFeature();
}

void _setUpFirebaseAuthFeature(){
  getIt.registerLazySingleton<AuthDataSource>(() => AuthDataSourceImpl(
      collection: getIt<FirebaseService>()
          .firebaseFirestore.collection(Collection.users),
      firebaseAuth: getIt<FirebaseService>().firebaseAuth,),
  );

  getIt.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(
      authDataSource: getIt())
  );

  //usecases
  getIt.registerLazySingleton(() => GetActiveUser(getIt()));
  getIt.registerLazySingleton(() => SignInWithEmailAndPassword(getIt()));
  getIt.registerLazySingleton(() => SignOut(getIt()));
}

void _setUpPostFeature(){
  getIt.registerLazySingleton<PostDataSource>(() => PostDataSourceImpl(
      firebaseService: getIt())
  );

  getIt.registerLazySingleton<PostRepository>(() => PostRepositoryImpl(
      postDataSource: getIt()));

  getIt.registerLazySingleton(() => GetAllPosts(getIt()));
  getIt.registerLazySingleton(() => AddPostCoverImage(getIt()));
  getIt.registerLazySingleton(() => AddPost(getIt()));
}

void _setUpCommentFeature(){
  getIt.registerLazySingleton<CommentDataSource>(() => CommentDataSourceImpl(
      firebaseService: getIt())
  );

  getIt.registerLazySingleton<CommentRepository>(() => CommentRepositoryImpl(
      commentDataSource: getIt()));

  getIt.registerLazySingleton(() => GetAllComments(getIt()));
  getIt.registerLazySingleton(() => AddComment(getIt()));
}

void _setUpLikeFeature(){
  getIt.registerLazySingleton<LikeDataSource>(() => LikeDataSourceImpl(
      firebaseService: getIt())
  );

  getIt.registerLazySingleton<LikeRepository>(() => LikeRepositoryImpl(
      likeDataSource: getIt())
  );

  getIt.registerLazySingleton(() => AddLike(getIt()));
}