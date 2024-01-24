import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/themes/app_images.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  TextStyle bottomNavStyle = GoogleFonts.lato(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86.4,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              _selectedIndex == 0
                  ? AppImages.homeColoredIcon
                  : AppImages.homeIcon,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              _selectedIndex == 1
                  ? AppImages.heartColoredIcon
                  : AppImages.heartIcon,
            ),
            label: "Heart",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              _selectedIndex == 2
                  ? AppImages.plusColoredIcon
                  : AppImages.plusIcon,
            ),
            label: "Plus",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              _selectedIndex == 3
                  ? AppImages.notificationColoredIcon
                  : AppImages.notificationIcon,
            ),
            label: "Notification",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              _selectedIndex == 4
                  ? AppImages.userColoredIcon
                  : AppImages.userIcon,
            ),
            label: "User",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
      ),
    );
  }
}
