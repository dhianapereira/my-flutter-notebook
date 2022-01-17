import 'package:flutter/material.dart';

class StopwatchButtonWidget extends StatelessWidget {
  final VoidCallback? onPressed;
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
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        onPressed: onPressed,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 35,
              ),
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
