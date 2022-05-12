import 'package:bored_app/features/activity/data/data_source/activity_remote_data_source.dart';
import 'package:bored_app/features/activity/data/repository/activity_repository_impl.dart';
import 'package:bored_app/features/activity/domain/repository/activity_repository.dart';
import 'package:bored_app/features/activity/domain/usecase/get_activity.dart';
import 'package:bored_app/features/activity/presentation/bloc/activity_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void init() {
  sl.registerFactory(() => ActivityBloc(sl()));
  sl.registerLazySingleton(() => GetActivity(sl()));
  sl.registerLazySingleton<ActivityRepository>(
      () => ActivityRepositoryImpl(remoteDataSource: sl()));
  sl.registerLazySingleton<ActivityRemoteDataSource>(
      () => ActivityRemoteDataSourceImpl(sl()));
  sl.registerLazySingleton(() => http.Client());
}
