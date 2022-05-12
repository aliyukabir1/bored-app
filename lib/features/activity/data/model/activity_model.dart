import 'package:bored_app/features/activity/domain/entity/activity.dart';

class ActivityModel extends Activity {
  ActivityModel(
      {required String activity,
      required int participant,
      required String type,
      String? link})
      : super(
            activity: activity,
            participant: participant,
            type: type,
            link: link);

  factory ActivityModel.fromJson(Map<String, dynamic> json) {
    return ActivityModel(
        activity: json['activity'],
        participant: json['participants'],
        type: json['type'],
        link: json['link']);
  }
}
