import 'dart:convert';

import 'package:bored_app/features/activity/data/model/activity_model.dart';
import 'package:bored_app/features/activity/domain/entity/activity.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../core/fixtures/fixture_reader.dart';

void main() {
  late ActivityModel activityModel;

  setUp(() {
    activityModel = ActivityModel(
        activity: 'test', participant: 1, type: 'test', link: 'test');
  });
  test('should be a type of activity entity', () {
    expect(activityModel, isA<Activity>());
  });

  group('from json', () {
    test('should convert json to activity model', () {
      final jsonString = fixture('activity.json');
      final result = ActivityModel.fromJson(jsonDecode(jsonString));
      expect(result, isA<ActivityModel>());
    });
  });
}
