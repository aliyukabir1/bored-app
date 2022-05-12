import 'package:bored_app/core/errors/exception.dart';
import 'package:bored_app/features/activity/data/data_source/activity_remote_data_source.dart';
import 'package:bored_app/features/activity/domain/entity/activity.dart';
import 'package:bored_app/core/errors/failure.dart';
import 'package:bored_app/features/activity/domain/repository/activity_repository.dart';
import 'package:dartz/dartz.dart';

class ActivityRepositoryImpl implements ActivityRepository {
  final ActivityRemoteDataSource remoteDataSource;

  ActivityRepositoryImpl({required this.remoteDataSource});
  @override
  Future<Either<Failure, Activity>> getActivity() async {
    try {
      final remoteActivity = await remoteDataSource.getActivity();
      return Right(remoteActivity);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
