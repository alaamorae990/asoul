import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'package:provider/provider.dart';
import '../consts/theme_data.dart';
import '../provider/dark_theme_provider.dart';
import 'categories_screen.dart';
import 'child/home_screen.dart';
import 'user_info.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _selectedIndex = 0;
  final List<Map<String, dynamic>> _pages = [
    {
      'page': const HomeScreen(),
      'title': 'Home Screen',
    },
    {
      'page': const CategoriesScreen(),
      'title': 'Categories Screen',
    },

    {
      'page': const UserScreen(),
      'title': 'user Screen',
    },
  ];
  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);

    bool _isDark = themeState.getDarkTheme;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text( _pages[_selectedIndex]['title']),
      // ),

      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: _isDark ? Theme.of(context).cardColor : Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        unselectedItemColor: _isDark ? Colors.white10 : Colors.black12,
        selectedItemColor: _isDark ? Colors.lightBlue.shade200 : primary,
        onTap: _selectedPage,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:
                Icon(_selectedIndex == 0 ? IconlyLight.home  : IconlyBold.home),
            label: "الرئيسية",
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 1
                ? IconlyLight.category
                :  IconlyBold.category),
            label: "الجرعات",
          ),

          BottomNavigationBarItem(
            icon: Icon(
                _selectedIndex == 3 ? IconlyLight.user2 :  IconlyBold.user2),
            label: "معلومات",
          ),
        ],
      ),
    );
  }
}
