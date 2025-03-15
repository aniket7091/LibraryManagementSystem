import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:chat_mate/common/utility/classic_tabbar.dart';
import 'package:chat_mate/common/utility/fantasy_tabbar.dart';
import 'package:chat_mate/common/utility/history_tabBar.dart';
import 'package:chat_mate/common/utility/romance_tabbar.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../google Api/google_books_service.dart';

class ExploreScreen extends StatefulWidget {
  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFBF3),
      appBar: AppBar(
        titleSpacing: 8.0,
        primary: true,
        backgroundColor: Color(0xffFFFBF3),
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Image(
            image: AssetImage('assets/images/menu.png'),
            width: 34,
            color: Color(0xff242A30),
          ),
        ),
        title: SearchBar(),
        actionsPadding: EdgeInsets.all(10),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://photosnow.org/wp-content/uploads/2024/04/doraemon-nobita-photo_14.jpg',
            ),
          ),
          SizedBox(width: 15),
        ],
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Genre',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff242A30),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ButtonsTabBar(
                  width: 88,
                  height: 50,
                  unselectedLabelStyle: GoogleFonts.roboto(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff242A30),
                  ),
                  labelStyle: GoogleFonts.roboto(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff242A30),
                  ),
                  borderColor: Color(0xffFAF5E6),
                  contentCenter: true,
                  unselectedBorderColor: Color(0xffFAF5E6),
                  radius: 15,
                  elevation: 1,
                  backgroundColor: Color(0xffEBC25C),
                  unselectedBackgroundColor: Color(0xffFFFFFF),
                  physics: ScrollPhysics(
                    parent: NeverScrollableScrollPhysics(),
                  ),

                  tabs: [
                    Tab(text: 'Classic'),
                    Tab(text: 'Fantasy'),
                    Tab(text: 'Romance'),
                    Tab(text: 'History'),
                  ],
                ),
              ),

              Expanded(
                child: TabBarView(
                  children: [
                    Center(child: ClassicTabBar()),
                    Center(child: FantasyTabBar()),
                    Center(child: RomanceTabBar()),
                    Center(child: HistoryTabBar()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ✅ Search Bar Widget
class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller;
    return Container(
      height: 49,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xffFFFFFF),
        border: Border.all(
          strokeAlign: BorderSide.strokeAlignInside,
          color: Color(0xffFAF5E6),
          width: 1.5,
        ),
      ),
      child: TextField(
        textAlign: TextAlign.start,
        style: GoogleFonts.roboto(
          color: Color(0xff242A30),
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        cursorRadius: Radius.circular(10),
        textAlignVertical: TextAlignVertical(y: 0.2),
        cursorHeight: 20,
        decoration: InputDecoration(
          hintText: 'Search a book or author...',
          contentPadding: EdgeInsets.all(8),
          prefixIcon: Icon(FluentSystemIcons.ic_fluent_search_regular),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Color(0xffFAF5E6),
              strokeAlign: BorderSide.strokeAlignInside,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Color(0xffFAF5E6),
              strokeAlign: BorderSide.strokeAlignInside,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
