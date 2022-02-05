import 'package:get_it/get_it.dart';
import 'package:luna/core/services/firebase_auth_service.dart';
import 'package:luna/core/services/user_profile_service.dart';
import 'package:luna/core/utils/statics/collection.dart';
import 'package:luna/features/firebase_authentication/data/data_sources/auth_data_source.dart';
import 'package:luna/features/firebase_authentication/data/data_sources/auth_data_source_impl.dart';
import 'package:luna/features/firebase_authentication/data/repositories/auth_repository_impl.dart';
import 'package:luna/features/firebase_authentication/domain/repositories/auth_repository.dart';
import 'package:luna/features/firebase_authentication/domain/usecases/get_active_user.dart';
import 'package:luna/features/firebase_authentication/domain/usecases/signin_with_email_and_password.dart';
import 'package:luna/features/post/data/data_sources/post_data_source.dart';
import 'package:luna/features/post/data/data_sources/post_data_source_impl.dart';
import 'package:luna/features/post/data/repositories/post_repository_impl.dart';
import 'package:luna/features/post/domain/repositories/post_repository.dart';
import 'package:luna/features/post/domain/usecases/GetPost.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async{

  getIt.registerLazySingleton(() => FirebaseService());
  getIt.registerLazySingleton(() => UserProfileService());

  getIt<FirebaseService>().init();

  _setUpFirebaseAuthFeature();
  _setUpPostFeature();
}

void _setUpFirebaseAuthFeature(){
  getIt.registerLazySingleton<AuthDataSource>(() => AuthDataSourceImpl(
      collection: GetIt.instance<FirebaseService>()
          .firebaseFirestore.collection(Collection.users),
      firebaseAuth: GetIt.instance<FirebaseService>().firebaseAuth),
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
      firestore: GetIt.instance<FirebaseService>().firebaseFirestore,
      collectionReference: GetIt.instance<FirebaseService>()
          .firebaseFirestore.collection(Collection.posts)));

  getIt.registerLazySingleton<PostRepository>(() => PostRepositoryImpl(
      postDataSource: getIt()));

  getIt.registerLazySingleton(() => GetPosts(getIt()));
}