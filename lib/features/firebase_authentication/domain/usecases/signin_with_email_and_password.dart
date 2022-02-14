import 'package:dartz/dartz.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/states/failure.dart';
import 'package:luna/core/usecases/usecase_with_params.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/firebase_authentication/domain/repositories/auth_repository.dart';

import '../../data/models/user_profile.dart';

class SignInWithEmailAndPassword implements UseCaseWithParams<DataState<UserProfile, LoginError>, LoginCredentials>{
  final AuthRepository _authRepository;

  SignInWithEmailAndPassword(this._authRepository);

  @override
  Future<Either<Failure, DataState<UserProfile, LoginError>>> call(LoginCredentials params) async{
    return _authRepository.signInWithEmailAndPassword(params);
  }
}