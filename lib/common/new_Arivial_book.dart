import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class NewArrivalBook extends StatelessWidget {
  const NewArrivalBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 167,
          height: 310,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Color(0xffFFFFFF),
            border: Border.all(
              strokeAlign: BorderSide.strokeAlignInside,
              color: Color(0xffFAF5E6),
              width: 2,
            ),
            boxShadow: [BoxShadow(color: Color(0xff000000))],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 149,
                  height: 232,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://m.media-amazon.com/images/I/715UIaME2CL._AC_UF1000,1000_QL80_.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(
                'Next in Line',
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff242A30),
                ),
              ),
              Text(
                'Jeffrey Archer',
                style: GoogleFonts.roboto(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff242A30),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12), // Smooth edges
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), // Blur effect
              child: Container(
                width: 60,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(
                    0x3D000000,
                  ).withOpacity(0.24), // Semi-transparent
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.star, color: Color(0xffEBC25C), size: 15),
                    Text(
                      '4.4',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xffEBC25C),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
