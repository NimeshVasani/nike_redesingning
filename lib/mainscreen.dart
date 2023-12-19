import 'package:flutter/material.dart';
import 'package:uidesigning/explorescreen.dart';
import 'package:uidesigning/favoritescreen.dart';
import 'package:uidesigning/userscreen.dart';

import 'homescreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  static const List<Widget> _bottomNavScreens = [
    HomeScreen(),
    ExploreScreen(),
    FavoriteScreen(),
    UserScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
          child:_bottomNavScreens.elementAt(selectedIndex)),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
          child: Container(
            height: 80,
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Colors.black),
            child: BottomNavigationBar(
              unselectedItemColor: Colors.white60,
              selectedItemColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              currentIndex: selectedIndex,
              onTap: (int index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined, color: Colors.white),
                  activeIcon: Icon(Icons.home_outlined, color: Colors.blue),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.travel_explore_rounded, color: Colors.white),
                  activeIcon: Icon(Icons.travel_explore, color: Colors.blue),
                  label: "explore",
                ),
                BottomNavigationBarItem(
                  icon:
                      Icon(Icons.favorite_border_outlined, color: Colors.white),
                  activeIcon: Icon(Icons.favorite, color: Colors.blue),
                  label: "Favorite",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.supervised_user_circle_outlined,
                      color: Colors.white),
                  activeIcon: Icon(Icons.supervised_user_circle_rounded, color: Colors.blue),
                  label: "Premium",
                ),
              ],
              iconSize: 35,
              backgroundColor: Colors.transparent,
              showSelectedLabels: false,
              showUnselectedLabels: false,
            ),
          ),
        ),
      ),
    );
  }
}
