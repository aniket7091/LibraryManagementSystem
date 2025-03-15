import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HistoryTabBar extends StatefulWidget {
  const HistoryTabBar({super.key});

  @override
  State<HistoryTabBar> createState() => _HistoryTabBarState();
}

class _HistoryTabBarState extends State<HistoryTabBar> {
  final myItems = [
    'https://m.media-amazon.com/images/I/81CY2Y5Ua7L._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/81xogn0Q4LL._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/713jIoMO3UL._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/81IFXnlXNKL._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/81Dil7c4amL._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/81bD8bgzrmL._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/81qiBQl89PL._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/81DBK93b6jL._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/81RT+tXTtWL._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/714Q1IAvloL._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/71YZh45+vXL._SL1360_.jpg',
    'https://m.media-amazon.com/images/I/51MJPKLm3jL.jpg',
  ];

  int myCounterIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(30),
        CarouselSlider(
          items:
              myItems.map((url) {
                return Container(
                  width: 228,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 5),

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
            enlargeFactor: 2.0,
            height: 300,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.scale,
            autoPlay: true,
            enableInfiniteScroll: true,
            aspectRatio: 228 / 300,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayInterval: const Duration(seconds: 3),
            pageSnapping: true,
            animateToClosest: true,
            onPageChanged: (index, reason) {
              setState(() {
                myCounterIndex = index;
              });
            },
          ),
        ),
        Gap(10),
        AnimatedSmoothIndicator(
          effect: WormEffect(
            dotColor: Colors.grey,
            dotHeight: 8,
            dotWidth: 8,
            spacing: 5,
            activeDotColor: Color(0xff2567E8),
            paintStyle: PaintingStyle.fill,
          ),
          activeIndex: myCounterIndex,
          count: myItems.length,
        ),
        Gap(20),
        Text(
          'Explore History Books',
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
            "Whether you seek to uncover the secrets of the past, walk in the footsteps of great leaders, or relive the triumphs and struggles that shaped our world, history books offer a gateway to knowledge, perspective, and timeless stories.",
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
