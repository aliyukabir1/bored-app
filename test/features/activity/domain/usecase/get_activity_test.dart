import 'package:bored_app/core/errors/failure.dart';
import 'package:bored_app/features/activity/domain/entity/activity.dart';
import 'package:bored_app/features/activity/domain/usecase/get_activity.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../helper/mocks.mocks.dart';

void main() {
  late MockActivityRepository mockActivityRepository;
  late GetActivity usecase;

  setUp(() {
    mockActivityRepository = MockActivityRepository();
    usecase = GetActivity(mockActivityRepository);
  });
  test('should return an Activity', () async {
    final tActivity =
        Activity(activity: 'test', participant: 1, type: 'test', link: 'test');
    when(mockActivityRepository.getActivity())
        .thenAnswer((_) async => Right(tActivity));

    final result = await usecase.call();
    expect(result, Right(tActivity));
  });

  test('should return a failure', () async {
    final failure = Failure();
    when(mockActivityRepository.getActivity())
        .thenAnswer((_) async => Left(failure));
    final result = await usecase.call();

    expect(result, Left(failure));
  });
}
