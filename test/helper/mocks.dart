import 'package:bored_app/features/activity/domain/repository/activity_repository.dart';
import 'package:bored_app/features/activity/domain/usecase/get_activity.dart';
import 'package:bored_app/features/activity/presentation/bloc/activity_bloc.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;

@GenerateMocks([ActivityRepository, http.Client, GetActivity, ActivityBloc])
void main() {}
