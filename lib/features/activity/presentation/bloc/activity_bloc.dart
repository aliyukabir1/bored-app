import 'package:bloc/bloc.dart';
import 'package:bored_app/features/activity/domain/entity/activity.dart';
import 'package:bored_app/features/activity/domain/usecase/get_activity.dart';
import 'package:meta/meta.dart';

part 'activity_event.dart';
part 'activity_state.dart';

class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  final GetActivity getActivity;
  ActivityBloc(this.getActivity) : super(Empty()) {
    on<ActivityEvent>((event, emit) async {
      if (event is GetActivityEvent) {
        emit(Loading());
        final activityOrFailure = await getActivity();
        emit(activityOrFailure.fold(
            (failure) => Error('Check internet connection and try again'),
            (activity) => Loaded(activity: activity)));
      }
    });
  }
}
