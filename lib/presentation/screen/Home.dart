import 'package:chat_mate/common/author_detail.dart';
import 'package:chat_mate/common/new_Arivial_book.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../google Api/google_books_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      body: ListView(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //for popular Authors
                  SizedBox(
                    width: 344,
                    height: 185,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Popular Authors",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Color(0xff242A30),
                          ),
                        ),
                        Gap(16),

                        // listView Used later
                        SingleChildScrollView(
                          padding: EdgeInsets.symmetric(horizontal: 2),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              AuthorDetail(),
                              Gap(10),
                              AuthorDetail(),
                              Gap(10),
                              AuthorDetail(),
                              Gap(10),
                              AuthorDetail(),
                              Gap(10),
                              AuthorDetail(),
                              Gap(10),
                              AuthorDetail(),
                              Gap(10),
                              AuthorDetail(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(25),
                  SizedBox(
                    width: double.infinity,
                    height: 350,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'New Books',
                          style: GoogleFonts.roboto(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff242A30),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              NewArrivalBook(),
                              Gap(13),
                              NewArrivalBook(),
                              Gap(13),
                              NewArrivalBook(),
                              Gap(13),
                              NewArrivalBook(),
                              Gap(13),
                              NewArrivalBook(),
                              Gap(13),
                              NewArrivalBook(),
                              Gap(13),
                              NewArrivalBook(),
                              Gap(13),
                              NewArrivalBook(),
                              Gap(13),
                              NewArrivalBook(),
                              Gap(13),
                              NewArrivalBook(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SearchBar extends StatefulWidget {
  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController searchController = TextEditingController();
  final GoogleBooksService _booksService = GoogleBooksService();
  List<dynamic> _books = [];
  void _searchBooks() async {
    final books = await _booksService.searchBooks(searchController.text);
    setState(() {
      _books = books;
    });
  }
  @override
  Widget build(BuildContext context) {
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
        controller: searchController,
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
          prefixIcon: InkWell(
            onTap: _searchBooks,
              child: Icon(FluentSystemIcons.ic_fluent_search_regular)),
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
