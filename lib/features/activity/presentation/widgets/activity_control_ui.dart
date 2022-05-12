import 'package:bored_app/features/activity/presentation/bloc/activity_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActivityControl extends StatelessWidget {
  const ActivityControl({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: (() {
        BlocProvider.of<ActivityBloc>(context).add(GetActivityEvent());
      }),
      color: Colors.red,
      child: const Text('Search'),
      textColor: Colors.white,
    );
  }
}
