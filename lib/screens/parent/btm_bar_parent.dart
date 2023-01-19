import 'package:asoul/screens/parent/question_screen.dart';
import 'package:asoul/screens/parent/table_screen.dart';
import 'package:asoul/screens/parent/website_screen.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'package:provider/provider.dart';

import '../../consts/theme_data.dart';
import '../../provider/dark_theme_provider.dart';
import 'categories_screen_parent.dart';
import 'home_screen_parent.dart';


class BottomBarParentScreen extends StatefulWidget {
  static const routeName = "/BottomBarParentScreen";
  const BottomBarParentScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarParentScreen> createState() => _BottomBarParentScreenState();
}

class _BottomBarParentScreenState extends State<BottomBarParentScreen> {
  int _selectedIndex = 0;
  final List<Map<String, dynamic>> _pages = [
    {
      'page': const HomeScreenParent(),
      'title': 'Home Screen',
    },
    {
      'page': const CategoriesScreenParent(),
      'title': 'Categories Screen',
    },
    {
      'page': const TableScreen(),
      'title': 'Cart Screen',
    },
    {
      'page': const QuestionScreenParent(),
      'title': 'user Screen',
    },
    {
      'page': const WebSiteScreenParent(),
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
        type: BottomNavigationBarType.fixed,
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
            label: "الأقسام",
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 2
                ? IconlyLight.ticketStar
                :  IconlyBold.ticketStar),
            label: "تسجيل قراءات السكري",
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 3
                ? IconlyLight.infoSquare
                :  IconlyBold.infoSquare),
            label: "اسئلة ووصايا",
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 3
                ? IconlyLight.document
                :  IconlyBold.document),
            label: "مواقع مفيدة",
          ),

        ],
      ),
    );
  }
}
