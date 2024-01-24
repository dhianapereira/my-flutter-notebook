import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/models/beach_model.dart';
import 'package:travel_app/models/popular_model.dart';
import 'package:travel_app/models/recommended_model.dart';
import 'package:travel_app/themes/app_colors.dart';
import 'package:travel_app/themes/app_constants.dart';
import 'package:travel_app/themes/app_images.dart';
import 'package:travel_app/widgets/bottom_navigator/bottom_navigation_bar_widget.dart';
import 'package:travel_app/widgets/buttons/icon_button_widget.dart';
import 'package:travel_app/widgets/cards/image_card_widget.dart';
import 'package:travel_app/widgets/tab_bar/tab_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _pageController = PageController(viewportFraction: 0.877);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            buildAppBar(),
            buildExploreTitle(),
            buildTabBar(),
            buildRecommendationsSection(),
            buildDotsIndicator(),
            buildPopularTitle(),
            buildPopularsSection(),
            buildBeachesSection(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }

  Container buildAppBar() {
    return Container(
      height: CONTAINER_DEFAULT_SIZE,
      margin: const EdgeInsets.only(
        top: DEFAULT_MARGIN,
        left: DEFAULT_MARGIN,
        right: DEFAULT_MARGIN,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          IconButtonWidget(icon: AppImages.drawerIcon),
          IconButtonWidget(icon: AppImages.searchIcon),
        ],
      ),
    );
  }

  Padding buildExploreTitle() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 48,
        left: 14.4,
      ),
      child: Text(
        "Explore\nthe Nature",
        style: GoogleFonts.playfairDisplay(
          fontSize: 45.6,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Container buildTabBar() {
    return Container(
      height: 30,
      margin: const EdgeInsets.only(
        left: 14.4,
        top: DEFAULT_MARGIN,
      ),
      child: const DefaultTabController(
        length: 4,
        child: TabBar(
          indicatorPadding: EdgeInsets.only(
            left: PADDING_TAB_BAR,
            right: PADDING_TAB_BAR,
          ),
          isScrollable: true,
          tabs: [
            TabWidget(
              title: "Recommended",
            ),
            TabWidget(
              title: "Popular",
            ),
            TabWidget(
              title: "New Destination",
            ),
            TabWidget(
              title: "Hidden Gems",
            ),
          ],
        ),
      ),
    );
  }

  Container buildRecommendationsSection() {
    return Container(
      height: RECOMMENDATIONS_SECTION_HEIGHT,
      margin: const EdgeInsets.only(top: 16),
      child: PageView(
        physics: const BouncingScrollPhysics(),
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        children: List.generate(
          recommendations.length,
          (index) {
            return ImageCardWidget(
              recommendedModel: recommendations[index],
            );
          },
        ),
      ),
    );
  }

  Padding buildDotsIndicator() {
    return Padding(
      padding: const EdgeInsets.only(left: 28.8, top: 28.8),
      child: SmoothPageIndicator(
        controller: _pageController,
        count: recommendations.length,
        effect: const ExpandingDotsEffect(
          activeDotColor: AppColors.black,
          dotColor: AppColors.gray,
          dotHeight: 4.8,
          dotWidth: 6,
          spacing: 4.8,
        ),
      ),
    );
  }

  Padding buildPopularTitle() {
    return Padding(
      padding: const EdgeInsets.only(top: 38, left: 28.8, right: 28.8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Popular Categories",
            style: GoogleFonts.playfairDisplay(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: AppColors.black,
            ),
          ),
          Text(
            "Show All",
            style: GoogleFonts.lato(
              fontSize: 16.8,
              fontWeight: FontWeight.w500,
              color: AppColors.gray,
            ),
          ),
        ],
      ),
    );
  }

  Container buildPopularsSection() {
    return Container(
      margin: const EdgeInsets.only(top: 33.6),
      height: 45.6,
      child: ListView.builder(
        itemCount: populars.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(left: 28.8, right: 9.6),
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 19.2),
            height: 45.6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(DEFAULT_BORDER_RADIUS),
              color: Color(populars[index].color),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 19.2),
                Image.asset(
                  populars[index].image,
                  height: 16.8,
                ),
                const SizedBox(width: 19.2),
              ],
            ),
          );
        },
      ),
    );
  }

  Container buildBeachesSection() {
    return Container(
      margin: const EdgeInsets.only(top: DEFAULT_MARGIN, bottom: 16.8),
      height: BEACHES_SECTION_HEIGHT,
      child: ListView.builder(
        itemCount: beaches.length,
        padding: const EdgeInsets.only(left: 28.8, right: 12),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            height: BEACHES_SECTION_HEIGHT,
            width: BEACHES_SECTION_WIDTH,
            margin: const EdgeInsets.only(right: 16.8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                DEFAULT_BORDER_RADIUS,
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(beaches[index].image),
              ),
            ),
          );
        },
      ),
    );
  }
}
