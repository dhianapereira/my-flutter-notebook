import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/themes/app_colors.dart';
import 'package:travel_app/themes/app_constants.dart';

class IconButtonWidget extends StatelessWidget {
  final String icon;
  const IconButtonWidget({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: CONTAINER_DEFAULT_SIZE,
      width: CONTAINER_DEFAULT_SIZE,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(DEFAULT_BORDER_RADIUS),
        color: AppColors.lightGray,
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
