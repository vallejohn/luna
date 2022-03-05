import 'package:dartz/dartz.dart';
import 'package:luna/core/states/auth_state.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/states/failure.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/firebase_authentication/data/data_sources/auth_data_source.dart';


abstract class AuthRepository{
  final AuthDataSource authDataSource;
  AuthRepository({required this.authDataSource});

  Future<Either<Failure, DataState<UserProfileParam, LoginError>>> signInWithEmailAndPassword(LoginCredentials params);
  Future<Either<Failure, AuthState>> getActiveUser();
}