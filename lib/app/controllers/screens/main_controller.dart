import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wordly_project/app/features/home/home/imports.dart';
import 'package:wordly_project/app/features/leaderboard/leaderboard/imports.dart';
import 'package:wordly_project/app/features/profile/profile/imports.dart';

class MainNavController extends GetxController {
  PageController pageController = PageController();
  List<Widget> pages = [
    HomePage(),
    LeaderboardPage(),
    ProfilePage(),
  ];
  var currentIndex = 0.obs;

  void changePage(int index) {
    currentIndex.value = index;
    pageController.jumpToPage(
      index,
      // duration: Duration(milliseconds: 300),
      // curve: Curves.linear,
    );
  }
}
