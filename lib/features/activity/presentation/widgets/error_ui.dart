import 'package:flutter/material.dart';

class ErrorUI extends StatelessWidget {
  final String message;
  const ErrorUI({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'oops!! \n $message',
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.amber, fontSize: 18),
      ),
    );
  }
}
