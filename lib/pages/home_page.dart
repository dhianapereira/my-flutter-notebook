import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro/controllers/pomodoro.controller.dart';
import 'package:pomodoro/widgets/stopwatch_widget.dart';
import 'package:pomodoro/widgets/time_input_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<PomodoroController>();

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: StopwatchWidget(),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Observer(
              builder: (_) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TimeInputWidget(
                      title: "Trabalho",
                      value: controller.workTime.time,
                      increment: controller.incrementWorkNotEnabled
                          ? null
                          : controller.incrementWorkTime,
                      decrement: controller.decrementWorkNotEnabled
                          ? null
                          : controller.decrementWorkTime,
                    ),
                    TimeInputWidget(
                      title: "Descanso",
                      value: controller.restTime.time,
                      increment: controller.incrementRestNotEnabled
                          ? null
                          : controller.incrementRestTime,
                      decrement: controller.decrementRestNotEnabled
                          ? null
                          : controller.decrementRestTime,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
