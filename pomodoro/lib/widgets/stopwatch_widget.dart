import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro/controllers/pomodoro.controller.dart';
import 'package:pomodoro/widgets/buttons/stopwatch_button_widget.dart';
import 'package:pomodoro/widgets/stopwatch/rest_time_stopwatch_button.dart';
import 'package:pomodoro/widgets/stopwatch/work_time_stopwatch_button.dart';

class StopwatchWidget extends StatelessWidget {
  const StopwatchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<PomodoroController>();

    return Observer(
      builder: (_) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              controller.isWorking ? "Hora de Trabalhar" : "Hora de Descansar",
              style: const TextStyle(fontSize: 40, color: Colors.white),
            ),
            const SizedBox(height: 20),
            Text(
              controller.time,
              style: const TextStyle(fontSize: 120, color: Colors.white),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (controller.isWorking) ...[
                  WorkTimeStopwatchButton(),
                ] else ...[
                  RestTimeStopwatchButton(),
                ],
                const SizedBox(width: 10),
                StopwatchButtonWidget(
                  onPressed: controller.restart,
                  title: "Reiniciar",
                  icon: Icons.refresh,
                  width: MediaQuery.of(context).size.width * .4,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
