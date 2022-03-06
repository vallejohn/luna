import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:luna/core/services/firebase_service.dart';
import 'package:luna/core/services/user_profile_service.dart';
import 'package:luna/core/utils/statics/collection.dart';
import 'package:luna/features/firebase_authentication/data/data_sources/auth_data_source.dart';
import 'package:luna/features/firebase_authentication/data/data_sources/auth_data_source_impl.dart';
import 'package:luna/features/firebase_authentication/data/repositories/auth_repository_impl.dart';
import 'package:luna/features/firebase_authentication/domain/repositories/auth_repository.dart';
import 'package:luna/features/firebase_authentication/domain/usecases/get_active_user.dart';
import 'package:luna/features/firebase_authentication/domain/usecases/signin_with_email_and_password.dart';
import 'package:luna/features/post/data/data_sources/image_upload_data_source.dart';
import 'package:luna/features/post/data/data_sources/image_upload_data_source_impl.dart';
import 'package:luna/features/post/data/data_sources/post_data_source.dart';
import 'package:luna/features/post/data/data_sources/post_data_source_impl.dart';
import 'package:luna/features/post/data/repositories/image_upload_repository_impl.dart';
import 'package:luna/features/post/data/repositories/post_repository_impl.dart';
import 'package:luna/features/post/domain/repositories/image_upload_repository.dart';
import 'package:luna/features/post/domain/repositories/post_repository.dart';
import 'package:luna/features/post/domain/usecases/add_post.dart';
import 'package:luna/features/post/domain/usecases/add_post_cover_image.dart';
import 'package:luna/features/post/domain/usecases/get_all_posts.dart';
import 'package:luna/features/post/domain/usecases/upload_image.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async{

  getIt.registerLazySingleton(() => FirebaseService());
  getIt.registerLazySingleton(() => UserProfileService());

  getIt<FirebaseService>().init();

  _setUpFirebaseAuthFeature();
  _setUpPostFeature();
  _setUpImageUploadFeature();
}

void _setUpFirebaseAuthFeature(){
  getIt.registerLazySingleton<AuthDataSource>(() => AuthDataSourceImpl(
      collection: getIt<FirebaseService>()
          .firebaseFirestore.collection(Collection.users),
      firebaseAuth: getIt<FirebaseService>().firebaseAuth,
      userProfileService: getIt()),
  );

  getIt.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(
      authDataSource: getIt())
  );

  //usecases
  getIt.registerLazySingleton(() => GetActiveUser(getIt()));
  getIt.registerLazySingleton(() => SignInWithEmailAndPassword(getIt()));
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

void _setUpImageUploadFeature(){
  getIt.registerLazySingleton<ImageUploadDataSource>(() => ImageUploadDataSourceImpl(
      firebaseService: getIt()));

  getIt.registerLazySingleton<ImageUploadRepository>(() => ImageUploadRepositoryImpl(
      imageUploadDataSource: getIt()));

  getIt.registerLazySingleton(() => UploadImage(getIt()));
}