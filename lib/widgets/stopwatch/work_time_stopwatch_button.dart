import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro/controllers/pomodoro.controller.dart';
import 'package:pomodoro/widgets/buttons/stopwatch_button_widget.dart';

class WorkTimeStopwatchButton extends StatelessWidget {
  const WorkTimeStopwatchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = GetIt.I.get<PomodoroController>();

    return Observer(
      builder: (_) {
        return Visibility(
          visible: controller.workTime.wasStarted,
          child: StopwatchButtonWidget(
            onPressed: controller.stop,
            title: "Pausar",
            icon: Icons.stop,
            width: size.width * .4,
          ),
          replacement: StopwatchButtonWidget(
            onPressed: controller.start,
            title: controller.workTime.wasStopped ? "Continue" : "Iniciar",
            icon: Icons.play_arrow,
            width: size.width * .4,
          ),
        );
      },
    );
  }
}
