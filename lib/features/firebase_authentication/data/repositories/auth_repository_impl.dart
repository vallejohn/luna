import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:luna/core/states/auth_state.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/states/failure.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/firebase_authentication/domain/repositories/auth_repository.dart';

import '../data_sources/auth_data_source.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl({
    required AuthDataSource authDataSource
  }) : super(
      authDataSource: authDataSource
  );

  @override
  Future<Either<Failure, DataState<UserProfileParam, LoginError>>> signInWithEmailAndPassword(LoginCredentials params) async{
    try{
      Logger().i('Trying to sign in');
      final dataState = await authDataSource.signInWithEmailAndPassword(params);
      return Right(dataState);
    }on FirebaseException catch(e){
      Logger().e('Error signing in: ${e.code}');
      return Left(Failure.firebase(message: e.code));
    }
  }

  @override
  Future<Either<Failure, AuthState>> getActiveUser() async {
    try{
      Logger().i('Trying to fetch active user');
      final authState = await authDataSource.getActiveUser();
      return Right(authState);
    }on FirebaseException catch(e){
      Logger().e('Error fetching active user: ${e.code}');
      return Left(Failure.firebase(message: e.code));
    }
  }
}
