import 'package:get_it/get_it.dart';
import 'package:luna/core/services/firebase_auth_service.dart';
import 'package:luna/features/firebase_authentication/data/data_sources/auth_data_source.dart';
import 'package:luna/features/firebase_authentication/data/data_sources/auth_data_source_impl.dart';
import 'package:luna/features/firebase_authentication/data/repositories/auth_repository_impl.dart';
import 'package:luna/features/firebase_authentication/domain/repositories/auth_repository.dart';
import 'package:luna/features/firebase_authentication/domain/usecases/get_active_user.dart';
import 'package:luna/features/firebase_authentication/domain/usecases/signin_with_email_and_password.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async{

  getIt.registerLazySingleton(() => FirebaseService());
  getIt<FirebaseService>().init();

  _setUpFirebaseAuthFeature();
}

void _setUpFirebaseAuthFeature(){
  getIt.registerLazySingleton<AuthDataSource>(() => AuthDataSourceImpl(
      collection: GetIt.instance<FirebaseService>()
          .firebaseFirestore.collection('users'),
      firebaseAuth: GetIt.instance<FirebaseService>().firebaseAuth),
  );

  getIt.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(
      authDataSource: getIt())
  );

  //usecases
  getIt.registerLazySingleton(() => GetActiveUser(getIt()));
  getIt.registerLazySingleton(() => SignInWithEmailAndPassword(getIt()));
}