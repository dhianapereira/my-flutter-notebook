import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  final String title;

  const TabWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(child: Text(title));
  }
}
