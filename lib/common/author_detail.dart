import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthorDetail extends StatelessWidget {
  const AuthorDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 108,
      height: 135,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Color(0xffFAF5E6),
          width: 2,
          strokeAlign: BorderSide.strokeAlignInside,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 92,
              height: 92,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://mczellbookwriting.com/blog/wp-content/uploads/2022/07/J.K.-Rowling.jpg',
                  ),
                   fit: BoxFit.cover
                ),
              ),
            ),
          ),
          Text(
            'J.K. Rowling',
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: Color(0xff242A30),
            ),
          ),
        ],
      ),
    );
  }
}
