import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokedex/app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) {
      runApp(const AppWidget());
    },
  );
}
