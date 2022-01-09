import 'package:dartz/dartz.dart';
import 'package:luna/core/states/failure.dart';

abstract class UseCaseWithParams<T, P>{
  Future<Either<Failure, T>> call(P params);
}