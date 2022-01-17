import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro/controllers/pomodoro_controller.dart';
import 'package:pomodoro/widgets/buttons/stopwatch_button_widget.dart';

class StopwatchWidget extends StatelessWidget {
  const StopwatchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
            buildButtonsRow(size),
          ],
        );
      },
    );
  }

  Row buildButtonsRow(Size size) {
    final controller = GetIt.I.get<PomodoroController>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Visibility(
          visible: !controller.wasStarted,
          child: StopwatchButtonWidget(
            onPressed: controller.start,
            title: controller.wasStopped ? "Continue" : "Iniciar",
            icon: Icons.play_arrow,
            width: size.width * .4,
          ),
          replacement: StopwatchButtonWidget(
            onPressed: controller.stop,
            title: "Pausar",
            icon: Icons.stop,
            width: size.width * .4,
          ),
        ),
        const SizedBox(width: 10),
        StopwatchButtonWidget(
          onPressed: controller.restart,
          title: "Reiniciar",
          icon: Icons.refresh,
          width: size.width * .4,
        ),
      ],
    );
  }
}
