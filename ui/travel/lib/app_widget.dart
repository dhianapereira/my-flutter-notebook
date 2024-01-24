import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/screens/home_screen.dart';
import 'package:travel_app/themes/app_colors.dart';
import 'package:travel_app/themes/app_constants.dart';
import 'package:travel_app/widgets/tab_bar/tab_indicator_widget.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primaryColor: AppColors.black,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: AppColors.black,
          background: AppColors.white,
        ),
        tabBarTheme: TabBarTheme(
          indicator: RoundedRectangleTabIndicator(
            color: AppColors.black,
            weight: 2.4,
            width: 14.4,
          ),
          indicatorSize: TabBarIndicatorSize.label,
          labelPadding: const EdgeInsets.only(
            left: PADDING_TAB_BAR,
            right: PADDING_TAB_BAR,
          ),
          labelColor: AppColors.black,
          unselectedLabelColor: AppColors.gray,
          labelStyle: GoogleFonts.lato(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
          unselectedLabelStyle: GoogleFonts.lato(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
