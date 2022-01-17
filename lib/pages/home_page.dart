import 'package:flutter/material.dart';
import 'package:pomodoro/widgets/stopwatch_widget.dart';
import 'package:pomodoro/widgets/time_input_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: StopwatchWidget(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TimeInputWidget(title: "Trabalho", value: 2),
                TimeInputWidget(title: "Descanso", value: 3),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
