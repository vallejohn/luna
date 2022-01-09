import 'package:dartz/dartz.dart';
import 'package:luna/core/states/auth_state.dart';
import 'package:luna/core/states/failure.dart';
import 'package:luna/core/usecases/usecase_with_no_params.dart';
import 'package:luna/features/firebase_authentication/domain/repositories/auth_repository.dart';

class GetActiveUser implements UseCaseWithNoParams<AuthState>{
  final AuthRepository _authRepository;

  GetActiveUser(this._authRepository);

  @override
  Future<Either<Failure, AuthState>> call() async{
    return _authRepository.getActiveUser();
  }
}