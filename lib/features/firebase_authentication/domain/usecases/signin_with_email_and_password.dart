import 'package:dartz/dartz.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/states/failure.dart';
import 'package:luna/core/usecases/usecase_with_params.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/firebase_authentication/domain/repositories/auth_repository.dart';


class SignInWithEmailAndPassword implements UseCaseWithParams<DataState<UserProfileParam, LoginError>, LoginCredentials>{
  final AuthRepository _authRepository;

  SignInWithEmailAndPassword(this._authRepository);

  @override
  Future<Either<Failure, DataState<UserProfileParam, LoginError>>> call(LoginCredentials params) async{
    return _authRepository.signInWithEmailAndPassword(params);
  }
}