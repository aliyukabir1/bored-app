part of 'activity_bloc.dart';

@immutable
abstract class ActivityState {}

class Empty extends ActivityState {}

class Loading extends ActivityState {}

class Loaded extends ActivityState {
  final Activity activity;

  Loaded({required this.activity});
}

class Error extends ActivityState {
  final String message;

  Error(this.message);
}
