import 'package:chat_mate/common/Custom_button.dart';
import 'package:chat_mate/presentation/screen/profile_screen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Profile',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Gap(100),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              CupertinoIcons.bell,
                              size: 19,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
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

                    // for edit button
                    SizedBox(
                      height: 35,
                      width: 112,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfileScreen2(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Edit Profile',
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
                Gap(30),
                Container(
                  height: 30,
                  width: double.infinity,
                  color: Color(0xffF6F6F6),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 26,
                      vertical: 5,
                    ),
                    child: Text(
                      'Mini Headline',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),

                // for mini headline
                Column(
                  children: [
                    // for popular text
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 26,
                        vertical: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Popular',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff000000),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                            color: Color(0xff000000),
                          ),
                        ],
                      ),
                    ),
                    // for trending text
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 26,
                        vertical: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Treading',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff000000),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                            color: Color(0xff000000),
                          ),
                        ],
                      ),
                    ),
                    // for Today
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 26,
                        vertical: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Today',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff000000),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                            color: Color(0xff000000),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Gap(10),
                Container(
                  height: 30,
                  width: double.infinity,
                  color: Color(0xffF6F6F6),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 26,
                      vertical: 5,
                    ),
                    child: Text(
                      'Content',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),

                // for content
                Column(
                  children: [
                    // for Favourite text
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 26,
                        vertical: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(CupertinoIcons.heart, size: 19),
                              Gap(10),
                              Text(
                                'Favourite',
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                            color: Color(0xff000000),
                          ),
                        ],
                      ),
                    ),
                    // for download text
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 26,
                        vertical: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.file_download_outlined, size: 24),
                              Gap(10),
                              Text(
                                'Download',
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                            color: Color(0xff000000),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Gap(10),
                Container(
                  height: 30,
                  width: double.infinity,
                  color: Color(0xffF6F6F6),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 26,
                      vertical: 5,
                    ),
                    child: Text(
                      'Preferences',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
                Gap(12),

                // for preferences
                Column(
                  children: [
                    // for language text
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 26,
                        vertical: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.language, size: 22),
                              Gap(10),
                              Text(
                                'Language',
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                            color: Color(0xff000000),
                          ),
                        ],
                      ),
                    ),
                    // for DarkMode text
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 26,
                        vertical: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(CupertinoIcons.moon, size: 24),
                              Gap(10),
                              Text(
                                'Dark mode',
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                            color: Color(0xff000000),
                          ),
                        ],
                      ),
                    ),
                    // for Only Download via Wifi
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 26,
                        vertical: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(CupertinoIcons.wifi, size: 24),
                              Gap(10),
                              Text(
                                'Only Download via Wifi',
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                            color: Color(0xff000000),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
