import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class ProfileScreen2 extends StatefulWidget {
  const ProfileScreen2({super.key});

  @override
  State<ProfileScreen2> createState() => _ProfileScreen2State();
}

class _ProfileScreen2State extends State<ProfileScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 188,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff2567E8),
              image: DecorationImage(
                image: AssetImage('assets/images/Star.png'),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // for upper part of app bar
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Icon Button for back
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Bootstrap.arrow_left,
                              size: 26,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Edit Profile',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),

                          // Icon Button for share
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Bootstrap.share,
                              size: 21,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gap(10),

                    // for Circular avatar
                    Container(
                      width: 122,
                      height: 122,
                      decoration: BoxDecoration(
                        border: Border.all(
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: Colors.white,
                          width: 5,
                        ),
                        borderRadius: BorderRadius.circular(70),
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://photosnow.org/wp-content/uploads/2024/04/doraemon-nobita-photo_14.jpg',
                          ),
                        ),
                      ),
                    ),
                    Gap(20),

                    // for change Profile Picture button
                    SizedBox(
                      height: 35,
                      width: 143,
                      child: ElevatedButton(
                        onPressed: () {

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Change Picture',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(40),

                // for all content like full Name and all
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'FullName',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                      ),
                      Gap(3),
                      // for full name
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 318,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1,color: Color(0xffA9A9A9))
                        ),
                        child: Text(
                          'Aniket Kumar',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Gap(15),
                      
                      // for Username
                      Text(
                        'Username',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                      ),
                      Gap(3),
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 318,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1,color: Color(0xffA9A9A9))
                        ),
                        child: Text(
                          'aniket7091',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Gap(15),

                      // for Email
                      Text(
                        'Email I’d',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                      ),
                      Gap(3),
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 318,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1,color: Color(0xffA9A9A9))
                        ),
                        child: Text(
                          'aniketkumar7091315698@gmail.com',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Gap(15),

                      // for Phone Number
                      Text(
                        'Phone Number',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                      ),
                      Gap(3),
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 318,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1,color: Color(0xffA9A9A9))
                        ),
                        child: Text(
                          '7091315698',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
