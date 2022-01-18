import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro/controllers/pomodoro.controller.dart';
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
    final controller = GetIt.I.get<PomodoroController>();

    return Scaffold(
      body: Observer(
        builder: (_) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Expanded(
                child: StopwatchWidget(),
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TimeInputWidget(
                      title: "Trabalho",
                      value: controller.workTime,
                      increment: controller.wasStarted && controller.isResting
                          ? null
                          : controller.incrementWorkTime,
                      decrement:
                          controller.wasStarted && controller.isWorking ||
                                  controller.workTime == 0
                              ? null
                              : controller.decrementWorkTime,
                    ),
                    TimeInputWidget(
                      title: "Descanso",
                      value: controller.restTime,
                      increment: controller.wasStarted && controller.isResting
                          ? null
                          : controller.incrementRestTime,
                      decrement:
                          controller.wasStarted && controller.isResting ||
                                  controller.restTime == 0
                              ? null
                              : controller.decrementRestTime,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
