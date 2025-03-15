import 'package:chat_mate/presentation/screen/Home.dart';
import 'package:chat_mate/presentation/screen/explorer_screen.dart';
import 'package:chat_mate/presentation/screen/profile_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottom_screen extends StatefulWidget {
  const bottom_screen({super.key});

  @override
  State<bottom_screen> createState() => _bottom_screenState();
}

class _bottom_screenState extends State<bottom_screen> {
  int _selectIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
     ExploreScreen(),
    const ProfileScreen()
  ];

  void _onItemTapped(int index) {
    _selectIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff5288fa),
          currentIndex: _selectIndex,
          onTap: _onItemTapped,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Color(0xff2567E8),
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: const Color(0xFF526480),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular,color: Color(0xff13181E),),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled,color: Color(0xff13181E),),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined,color: Color(0xff13181E),),
                activeIcon: Icon(Icons.explore,color: Color(0xff13181E),),
                label: 'Ticket'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person,color: Color(0xff13181E),),
                activeIcon: Icon(CupertinoIcons.person_fill,color: Color(0xff13181E),),
                label: 'profile'),
          ]),
    );
  }
}