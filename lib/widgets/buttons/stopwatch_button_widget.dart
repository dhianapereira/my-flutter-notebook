import 'package:flutter/material.dart';

class StopwatchButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final IconData icon;
  final double height;
  final double width;

  const StopwatchButtonWidget({
    Key? key,
    required this.onPressed,
    required this.title,
    required this.icon,
    this.height = 50,
    this.width = double.maxFinite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            textStyle: const TextStyle(fontSize: 25),
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 35,
              ),
              const SizedBox(width: 5),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}
