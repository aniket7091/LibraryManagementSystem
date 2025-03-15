import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FantasyTabBar extends StatefulWidget {
  const FantasyTabBar({super.key});

  @override
  State<FantasyTabBar> createState() => _FantasyTabBarState();
}

class _FantasyTabBarState extends State<FantasyTabBar> {
  final myItem = [
    'https://m.media-amazon.com/images/I/81cquiyLW8L._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/7138zaESFhL._SL1250_.jpg',
    'https://m.media-amazon.com/images/I/813jxUaYdGL._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/71yW1vXD2xL.jpg',
    'https://m.media-amazon.com/images/I/810ihc6IdwL._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/81LOUMJqbDL._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/91-DipaBR2L._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/81AIXow9BrL._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/81yUQ6rfnhL._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/81kQpeD4chL._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/81TDiLmks2L._SL1500_.jpg',
  ];

  int myCounterIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(30),

        // for image slider
        CarouselSlider(
          items:
              myItem.map((url) {
                return Container(
                  width: 228,
                  height: 300,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.network(
                      url,
                      width: 228,
                      height: 300,
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              }).toList(),
          options: CarouselOptions(
            autoPlay: true,
            height: 300,
            aspectRatio: 228 / 300,
            animateToClosest: true,
            enableInfiniteScroll: true,
            enlargeCenterPage: true,
            enlargeFactor: 2.0,
            pageSnapping: true,
            enlargeStrategy: CenterPageEnlargeStrategy.scale,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayInterval: const Duration(seconds: 3),
            onPageChanged: (index, reason) {
              setState(() {
                myCounterIndex = index;
              });
            },
          ),
        ),
        Gap(10),
        // for Animated dot
        AnimatedSmoothIndicator(
          effect: WormEffect(
            dotColor: CupertinoColors.systemGrey,
            activeDotColor: Color(0xff2567E8),
            dotHeight: 8,
            dotWidth: 8,
            spacing: 5,
            paintStyle: PaintingStyle.fill,
          ),
          activeIndex: myCounterIndex,
          count: myItem.length,
        ),
        Gap(20),
        Text(
          'Explore Fantasy Books',
          style: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xff242A30),
          ),
        ),
        Gap(5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Whether you seek an escape into magical realms, a journey alongside mythical creatures, or an epic adventure filled with sorcery and destiny, fantasy books open the door to endless wonders and imagination.",
            style: GoogleFonts.roboto(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: Color(0xff242A30),
            ),
          ),
        ),
      ],
    );
  }
}
