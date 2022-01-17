import 'package:flutter/material.dart';
import 'package:pomodoro/widgets/buttons/stopwatch_button_widget.dart';

class StopwatchWidget extends StatelessWidget {
  const StopwatchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hora de Trabalhar",
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          const SizedBox(height: 20),
          Text(
            "25:00",
            style: TextStyle(fontSize: 120, color: Colors.white),
          ),
          const SizedBox(height: 20),
          buildButtonsRow(size)
        ],
      ),
    );
  }

  Row buildButtonsRow(Size size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: StopwatchButtonWidget(
            onPressed: () {},
            title: "Iniciar",
            icon: Icons.play_arrow,
            width: size.width * .4,
          ),
        ),
        /*Padding(
              padding: const EdgeInsets.only(right: 10),
              child: StopwatchButtonWidget(
                onPressed: () {},
                title: "Pausar",
                icon: Icons.stop,
              ),
            ),*/
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: StopwatchButtonWidget(
            onPressed: () {},
            title: "Reiniciar",
            icon: Icons.refresh,
            width: size.width * .4,
          ),
        ),
      ],
    );
  }
}
