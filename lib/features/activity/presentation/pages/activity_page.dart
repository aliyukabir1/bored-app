import 'package:bored_app/features/activity/presentation/bloc/activity_bloc.dart';
import 'package:bored_app/service_injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/widgets.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
          create: (context) => sl<ActivityBloc>(),
          child: Scaffold(
            backgroundColor: Colors.blueGrey,
            appBar: AppBar(
              title: const Text('The Boring App'),
              centerTitle: true,
              elevation: 0,
              backgroundColor: Colors.blueGrey,
            ),
            body: Column(
              children: [
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.all(15),
                  color: Colors.black,
                  height: MediaQuery.of(context).size.height / 2,
                  child: BlocBuilder<ActivityBloc, ActivityState>(
                    builder: (context, state) {
                      if (state is Empty) {
                        return const EmptyUI();
                      } else if (state is Loading) {
                        return const LoadingUI();
                      } else if (state is Loaded) {
                        return LoadedUI(
                          activity: state.activity,
                        );
                      } else if (state is Error) {
                        return ErrorUI(message: state.message);
                      } else {
                        return Container();
                      }
                    },
                  ),
                ),
                const SizedBox(height: 40),
                const ActivityControl()
              ],
            ),
          )),
    );
  }
}
