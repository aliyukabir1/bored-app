import 'package:bored_app/core/errors/exception.dart';
import 'package:bored_app/features/activity/data/data_source/activity_remote_data_source.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;

import '../../../../core/fixtures/fixture_reader.dart';
import '../../../../helper/mocks.mocks.dart';

void main() {
  late ActivityRemoteDataSourceImpl activityRemoteDataSourceImpl;
  late MockClient mockClient;
  setUp(() {
    mockClient = MockClient();
    activityRemoteDataSourceImpl = ActivityRemoteDataSourceImpl(mockClient);
  });

  test('should ensure a call is made to the endpoint', () async {
    when(mockClient.get(Uri.parse('https://www.boredapi.com/api/activity')))
        .thenAnswer((_) async => http.Response(fixture('activity.json'), 200));
    activityRemoteDataSourceImpl.getActivity();
    verify(mockClient.get(Uri.parse('https://www.boredapi.com/api/activity')));
  });
  test('should throw a server exception when there is a problem', () async {
    when(mockClient.get(Uri.parse('https://www.boredapi.com/api/activity')))
        .thenAnswer((_) async => http.Response(fixture('activity.json'), 201));
    final result = activityRemoteDataSourceImpl.getActivity;
    expect(result.call(), throwsA(const TypeMatcher<ServerException>()));
  });
}
