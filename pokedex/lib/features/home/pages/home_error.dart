import 'package:flutter/material.dart';

class HomeError extends StatelessWidget {
  final String error;
  const HomeError({Key? key, required this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(error),
      ),
    );
  }
}
