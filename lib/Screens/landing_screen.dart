import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import "package:flutter/material.dart";
import 'package:gdsc_usict/Screens/add_post_screen.dart';
import 'package:gdsc_usict/Screens/ideas_screen.dart';
import 'package:gdsc_usict/Screens/messaging_screen.dart';
import 'package:gdsc_usict/Screens/profile_screen.dart';

import 'home_screen.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  PageController _pageController;
  int pageIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    _pageController = PageController();
    super.initState();
  }

  void _pageChangeFn(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  void _onTap(int pageIndex) {
    setState(() {
      _pageController.animateToPage(
        pageIndex,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          HomeScreen(),
          IdeasScreen(),
          AddPostScreen(),
          MessagingScreen(),
          ProfileScreen(),
        ],
        controller: _pageController,
        onPageChanged: _pageChangeFn,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        gapWidth: 2,
        onTap: _onTap,
        activeIndex: pageIndex,
        icons: [
          Icons.home,
          Icons.notification_important_outlined,
          Icons.add,
          Icons.message_outlined,
          Icons.account_circle_outlined,
        ],
      ),
    );
  }
}
