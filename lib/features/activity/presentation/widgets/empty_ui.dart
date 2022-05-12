import 'package:flutter/material.dart';

class EmptyUI extends StatelessWidget {
  const EmptyUI({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Center(
          child: Text(
            'Hey! are you bored ?',
            style: TextStyle(color: Colors.blueGrey, fontSize: 18),
          ),
        ),
        SizedBox(height: 25),
        Center(
          child: Text(
            'click the button to get a random activity',
            style: TextStyle(color: Colors.blueGrey, fontSize: 18),
          ),
        ),
      ],
    );
  }
}
