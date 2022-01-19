import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro/themes/app_colors.dart';
import 'package:pomodoro/controllers/pomodoro.controller.dart';

class AppThemes {
  static ThemeData get defaultTheme {
    Color? color;

    if (GetIt.I.get<PomodoroController>().isWorking) {
      color = AppColors.work;
    } else {
      color = AppColors.rest;
    }

    return ThemeData(
      primaryColor: color,
      scaffoldBackgroundColor: color,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(15),
          primary: color,
        ),
      ),
    );
  }
}
