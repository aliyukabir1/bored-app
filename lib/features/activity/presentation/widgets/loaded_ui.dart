import 'package:bored_app/features/activity/domain/entity/activity.dart';
import 'package:flutter/material.dart';

class LoadedUI extends StatelessWidget {
  final Activity activity;
  const LoadedUI({
    Key? key,
    required this.activity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildRow('Activity', activity.activity),
        buildRow('Type', activity.type),
        buildRow('Number of Participants', activity.participant.toString()),
      ],
    );
  }

  Row buildRow(String title, String detail) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$title : ',
          style: const TextStyle(
              color: Colors.grey, fontSize: 23, fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: Text(
            detail,
            textAlign: TextAlign.end,
            style: const TextStyle(color: Colors.blueGrey, fontSize: 20),
          ),
        ),
      ],
    );
  }
}
