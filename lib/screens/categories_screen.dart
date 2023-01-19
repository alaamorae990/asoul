


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import '../consts/data.dart';
import '../consts/enum.dart';

import '../consts/firebase_consts.dart';
import '../consts/menu_info.dart';
import '../consts/theme_data.dart';
import '../services/global_methods.dart';
import '../widgets/text_widget.dart';
import 'child/categories/alarm_page.dart';
import 'child/categories/clock_page.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      DeliveryOrBackup2(
          title: 'هل أخدت الجرعة لليوم  ',
          subtitle: 'انقر على الزر الذي بالأسفل',
          fct: () async {

          },
        fct2: (){
          Navigator.pop(context);
        },
          context: context, );

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: primary,
        shadowColor: Colors.amber,
        leadingWidth: 150,


        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset('assets/images/logo.png', fit: BoxFit.cover,height: 50,),
            Text('عسول و عسولة',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),

          ],
        ),
      ),
      backgroundColor: primary,
      body: Stack(
        children: [
          Image.asset('assets/images/01.png'),
          Center(child: Image.asset('assets/images/4.png')),

          // Padding(
          //   padding: const EdgeInsets.fromLTRB(150,250,0,0),
          //   child: Image.asset('assets/images/06.png'),
          // ),


          Container(
            color: Colors.white.withOpacity(0.3),
          ),
         Row(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: menuItems.map((currentMenuInfo) => buildMenuButton(currentMenuInfo)).toList(),
            ),
            const VerticalDivider(
              color: dividerColor,
              width: 1,
            ),
            Expanded(
              child: Consumer<MenuInfo>(
                builder: (BuildContext context, MenuInfo value, Widget? child) {
                  if (value.menuType == MenuType.clock)
                    return ClockPage();
                  else if (value.menuType == MenuType.alarm)
                    return AlarmPage();
                  else
                    return Container();
                },
              ),
            ),
          ],
        ),
    ],
      ),
    );
  }
  Widget buildMenuButton(MenuInfo currentMenuInfo) {
    return Consumer<MenuInfo>(
      builder: (BuildContext context, MenuInfo value, Widget? child) {
        return MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(32))),
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 0),
          color: currentMenuInfo.menuType == value.menuType ? menuBackgroundColor : pageBackgroundColor,
          onPressed: () {
            var menuInfo = Provider.of<MenuInfo>(context, listen: false);
            menuInfo.updateMenu(currentMenuInfo);
          },
          child: Column(
            children: <Widget>[
              Image.asset(
                currentMenuInfo.imageSource!,
                scale: 1.5,
              ),
              SizedBox(height: 16),
              Text(
                currentMenuInfo.title ?? '',
                style: TextStyle(fontFamily: 'avenir', color: primaryTextColor, fontSize: 14),
              ),
            ],
          ),
        );
      },
    );
  }
   Future<void> DeliveryOrBackup2({
    required String title,
    required String subtitle,
    required Function fct,
    required Function fct2,
    required BuildContext context,
  }) async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title:

            Text(title),
            // ]),
            content: Text(subtitle),
            actions: [
              TextButton(
                onPressed: () {
                  fct2();
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                },
                child: TextWidget(
                  color: Colors.cyan,
                  text: 'نعم',
                  textSize: 18,
                ),
              ),
              TextButton(
                onPressed: () {
                  fct();
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                },
                child: TextWidget(
                  color: Colors.red,
                  text: 'لا',
                  textSize: 18,
                ),
              ),
            ],
          );
        });
  }
   Future<void> errorDialog({
    required String subtitle,
    required BuildContext context,
  }) async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Row(children: [
              Image.asset(
                'assets/images/warning-sign.png',
                height: 20,
                width: 20,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                width: 8,
              ),
              const Text('An Error occured'),
            ]),
            content: Text(subtitle),
            actions: [
              TextButton(
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                },
                child: TextWidget(
                  color: Colors.cyan,
                  text: 'Ok',
                  textSize: 18,
                ),
              ),
            ],
          );
        });
  }
}