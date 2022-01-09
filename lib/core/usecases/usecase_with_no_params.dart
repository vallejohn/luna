import 'package:dartz/dartz.dart';
import 'package:luna/core/states/failure.dart';

abstract class UseCaseWithNoParams<T>{
  Future<Either<Failure, T>> call();
}