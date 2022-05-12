import 'package:bored_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class Usecase<T> {
  Future<Either<Failure, T>> call();
}
