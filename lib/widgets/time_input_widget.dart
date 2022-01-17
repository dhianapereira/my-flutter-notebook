import 'package:flutter/material.dart';
import 'package:pomodoro/widgets/buttons/elevated_button_widget.dart';

class TimeInputWidget extends StatelessWidget {
  final String title;
  final int value;
  final VoidCallback? increment;
  final VoidCallback? decrement;

  const TimeInputWidget({
    Key? key,
    required this.title,
    required this.value,
    this.increment,
    this.decrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 25),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButtonWidget(
              onPressed: decrement,
              icon: Icons.arrow_downward,
            ),
            Text(
              "$value min",
              style: const TextStyle(fontSize: 18),
            ),
            ElevatedButtonWidget(
              onPressed: increment,
              icon: Icons.arrow_upward,
            ),
          ],
        ),
      ],
    );
  }
}
