import 'package:flutter/material.dart';
import 'package:pomodoro/pages/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'pomodoro app',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const HomePage(),
    );
  }
}
