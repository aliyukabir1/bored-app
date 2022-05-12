import 'package:bored_app/core/errors/failure.dart';
import 'package:bored_app/core/usecase/usecase.dart';
import 'package:bored_app/features/activity/domain/entity/activity.dart';
import 'package:bored_app/features/activity/domain/repository/activity_repository.dart';
import 'package:dartz/dartz.dart';

class GetActivity extends Usecase<Activity> {
  final ActivityRepository repository;

  GetActivity(this.repository);
  @override
  Future<Either<Failure, Activity>> call() {
    return repository.getActivity();
  }
}
