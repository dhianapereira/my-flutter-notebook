import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/pages/home_page.dart';
import 'package:pomodoro/themes/app_themes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'pomodoro app',
          theme: AppThemes.defaultTheme,
          home: const HomePage(),
        );
      },
    );
  }
}
