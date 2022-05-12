import 'dart:convert';

import 'package:bored_app/core/errors/exception.dart';
import 'package:bored_app/features/activity/data/model/activity_model.dart';
import 'package:http/http.dart' as http;

abstract class ActivityRemoteDataSource {
  Future<ActivityModel> getActivity();
}

class ActivityRemoteDataSourceImpl implements ActivityRemoteDataSource {
  final http.Client client;

  ActivityRemoteDataSourceImpl(this.client);
  @override
  Future<ActivityModel> getActivity() async {
    try {
      final response =
          await client.get(Uri.parse('https://www.boredapi.com/api/activity'));

      if (response.statusCode == 200) {
        return ActivityModel.fromJson(jsonDecode(response.body));
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }
}
