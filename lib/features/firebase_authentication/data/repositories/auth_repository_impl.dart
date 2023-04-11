import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:luna/core/states/auth_state.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/states/failure.dart';
import 'package:luna/core/utils/app_logger.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/firebase_authentication/data/models/account.dart';
import 'package:luna/features/firebase_authentication/domain/repositories/auth_repository.dart';

import '../data_sources/auth_data_source.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl({
    required AuthDataSource authDataSource
  }) : super(
      authDataSource: authDataSource
  );

  var log = AppLogger('AuthRepositoryImpl');

  @override
  Future<Either<Failure, Account>> signInWithEmailAndPassword(LoginCredentials params)async {
    try{
      final dataState = await authDataSource.signInWithEmailAndPassword(params);
      return Right(dataState);
    }on FirebaseException catch(e){
      return Left(Failure.firebase(e));
    }
  }

  @override
  Future<Either<Failure, AuthState>> getActiveUser() async {
    try{
      log.i('Trying to fetch active user');
      final authState = await authDataSource.getActiveUser();
      return Right(authState);
    }on FirebaseException catch(e){
      return Left(Failure.firebase(e));
    }
  }

  @override
  Future<Either<Failure, void>> signOut() async{
    try{
      log.i('Trying to sign out');
      return Right(await authDataSource.signOut());
    }on FirebaseException catch(e){
      log.e('Error while signing out: ${e.code}');
      return Left(Failure.firebase(e));
    }
  }
}
