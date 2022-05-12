import 'package:bored_app/core/errors/failure.dart';
import 'package:bored_app/features/activity/domain/entity/activity.dart';
import 'package:dartz/dartz.dart';

abstract class ActivityRepository {
  Future<Either<Failure, Activity>> getActivity();
}
