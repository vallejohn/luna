import 'package:dartz/dartz.dart';
import 'package:luna/core/states/failure.dart';
import 'package:luna/core/usecases/usecase_with_params.dart';
import 'package:luna/core/utils/params.dart';
import 'package:luna/features/firebase_authentication/data/models/account.dart';
import 'package:luna/features/firebase_authentication/domain/repositories/auth_repository.dart';


class SignUpWithEmailAndPassword implements UseCaseWithParams<Account, SignUpCredentials>{
  final AuthRepository _authRepository;

  SignUpWithEmailAndPassword(this._authRepository);

  @override
  Future<Either<Failure, Account>> call(SignUpCredentials params) async{
    return _authRepository.signUpWithEmailAndPassword(params);
  }
}