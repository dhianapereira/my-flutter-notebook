import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/models/recommended_model.dart';
import 'package:travel_app/themes/app_constants.dart';
import 'package:travel_app/themes/app_images.dart';

class ImageCardWidget extends StatelessWidget {
  final RecommendedModel recommendedModel;

  const ImageCardWidget({
    Key? key,
    required this.recommendedModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: DEFAULT_MARGIN),
      width: RECOMMENDATIONS_SECTION_WIDTH,
      height: RECOMMENDATIONS_SECTION_HEIGHT,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          DEFAULT_BORDER_RADIUS,
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(recommendedModel.image),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 19.2,
            left: 19.2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4.8),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: IMAGE_BLUR,
                  sigmaY: IMAGE_BLUR,
                ),
                child: Container(
                  height: 36,
                  padding: const EdgeInsets.only(
                    left: 16.72,
                    right: 14.4,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      SvgPicture.asset(AppImages.locationIcon),
                      const SizedBox(width: 9.52),
                      Text(
                        recommendedModel.name,
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 16.8,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
