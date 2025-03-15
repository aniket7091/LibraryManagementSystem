import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RomanceTabBar extends StatefulWidget {
  const RomanceTabBar({super.key});

  @override
  State<RomanceTabBar> createState() => _RomanceTabBarState();
}

class _RomanceTabBarState extends State<RomanceTabBar> {
  final myItems = [
    'https://m.media-amazon.com/images/I/710m6GNvPML._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/814RhA2+2GL._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/71baLm1F++L._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/81aiZzyMKLL._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/71C3hjFzUjL._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/61LkGj5Hs5L._SL1125_.jpg',
    'https://m.media-amazon.com/images/I/81pGO40uexL._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/71dNsRuYL7L._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/81ruq7NQ+nL._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/81j9EB+PpjL._SL1500_.jpg',
    'https://m.media-amazon.com/images/I/91EHaC+M-RL._SL1500_.jpg',
  ];

  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Gap(30),
          CarouselSlider(
            items:
                myItems.map((url) {
                  return Container(
                    width: 228,
                    height: 300,
                    margin: EdgeInsets.symmetric(horizontal: 5),
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
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              aspectRatio: 228 / 300,
              enableInfiniteScroll: true,
              pageSnapping: true,
              autoPlay: true,
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
              enlargeCenterPage: true,
              height: 300,
              enlargeFactor: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  myCurrentIndex = index;
                });
              },
            ),
          ),
          Gap(10),
          AnimatedSmoothIndicator(
            effect: WormEffect(
              paintStyle: PaintingStyle.fill,
              spacing: 5,
              dotWidth: 8,
              dotHeight: 8,
              activeDotColor: Color(0xff2567E8),
              dotColor: Colors.grey,
            ),
            activeIndex: myCurrentIndex,
            count: myItems.length,
          ),
          Gap(20),
          Text(
            'Explore Romance Books',
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
              "Whether you're yearning for a heartwarming love story, a tale of passion and destiny, or an emotional journey filled with longing and devotion, romance books offer an endless world of love, hope, and connection.",
              style: GoogleFonts.roboto(fontSize: 12,fontWeight: FontWeight.normal,color: Color(0xff242A30)),
            ),
          ),
        ],
      ),
    );
  }
}
