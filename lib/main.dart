import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro/controllers/pomodoro_controller.dart';
import 'package:pomodoro/core/app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  GetIt.I.registerLazySingleton<PomodoroController>(() => PomodoroController());

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const AppWidget());
  });
}
