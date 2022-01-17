import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const ElevatedButtonWidget({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Icon(icon, color: Colors.white),
      style: Theme.of(context).elevatedButtonTheme.style,
    );
  }
}
