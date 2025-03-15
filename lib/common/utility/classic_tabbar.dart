import 'package:carousel_slider/carousel_slider.dart';
import 'package:chat_mate/presentation/auth/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ClassicTabBar extends StatefulWidget {
  const ClassicTabBar({super.key});

  @override
  State<ClassicTabBar> createState() => _ClassicTabBarState();
}

class _ClassicTabBarState extends State<ClassicTabBar> {
  final myItem = [
    'https://m.media-amazon.com/images/I/91D-aDTCKqL._AC_UF1000,1000_QL80_.jpg',
    'https://m.media-amazon.com/images/I/71C9yGwX9wL._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/91ORJa-xI9L._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/91-J0u9BwpL._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/61157LApbuL._SL1033_.jpg',
    'https://m.media-amazon.com/images/I/81gepf1eMqL._AC_UF1000,1000_QL80_.jpg',
    'https://m.media-amazon.com/images/I/71fm0Ap7JcL._AC_UF1000,1000_QL80_.jpg',
    'https://m.media-amazon.com/images/I/91Gy28f5M0L._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/610IfoLPhvL._SL1280_.jpg',
    'https://m.media-amazon.com/images/I/61Le4Mn1AYL._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/81tk0dOvfML._SL1500_.jpg',
  ];

  int myCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(30),

        /// **Carousel Slider**
        CarouselSlider(
          items:
              myItem.map((url) {
                return Container(
                  width: 228, // Fixed width
                  height: 300, // Fixed height
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.network(
                      url,
                      width: 228, // Fixed width
                      height: 300, // Fixed height
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              }).toList(),
          options: CarouselOptions(
            autoPlay: true,
            height: 300,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            aspectRatio: 228 / 300,
            enlargeFactor: 2.0,
            enlargeCenterPage: true,
            pageSnapping: true,
            enlargeStrategy: CenterPageEnlargeStrategy.scale,
            onPageChanged: (index, reason) {
              setState(() {
                myCurrentIndex = index;
              });
            },
          ),
        ),

        const Gap(10),

        /// **Page Indicator**
        AnimatedSmoothIndicator(
          activeIndex: myCurrentIndex,
          count: myItem.length,
          axisDirection: Axis.horizontal,
          effect: const WormEffect(
            dotHeight: 8,
            dotWidth: 8,
            spacing: 5,

            dotColor: Colors.grey,
            activeDotColor: Color(0xff2567E8),
            paintStyle: PaintingStyle.fill,
          ),
        ),
        Gap(20),
        Text(
          'Explore Classic Books',
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
            "Whether you're craving an escape from reality, seeking wisdom, or simply looking for a captivating story to lose yourself in, popular books offer an endless array of possibilities.",
            style: GoogleFonts.roboto(fontSize: 12,fontWeight: FontWeight.normal,color: Color(0xff242A30)),
          ),
        ),
      ],
    );
  }
}
