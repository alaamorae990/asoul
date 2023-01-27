import 'package:asoul/screens/parent/parent_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../consts/firebase_consts.dart';
import '../consts/theme_data.dart';
import '../provider/dark_theme_provider.dart';
import '../services/auth_screen.dart';
import '../services/global_methods.dart';
import '../widgets/lodaing_manger.dart';
import '../widgets/text_widget.dart';
import 'child/developer_screen.dart';
import 'child/food_screen.dart';
import 'child/health_center.dart';
import 'child/login.dart';
import 'child/tips_and_information.dart';
import 'child/user.dart';
import 'parent/btm_bar_parent.dart';

// ''
class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {

  String? fullName;
  String? number;

  bool _isLoading = false;
  final User? user = authInstance.currentUser;
  @override
  void initState() {
    getUserData();
    super.initState();
    setState(() {
      // _language.getLanguage();
    });
  }
  Future<void> getUserData() async {
    setState(() {
      _isLoading = true;
    });
    if (user == null) {
      setState(() {
        _isLoading = false;
      });
      return;
    }
    try {
      String _uid = user!.uid;

      final DocumentSnapshot userDoc =
      await FirebaseFirestore.instance.collection('users').doc(_uid).get();
      if (userDoc == null) {
        return;
      } else {
        fullName = userDoc.get('fullName');
        number = userDoc.get('numberSuper');
      }
    } catch (error) {
      setState(() {
        _isLoading = false;
      });
      GlobalMethods.errorDialog(subtitle: '$error', context: context);
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
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
      body:
      Stack(
        children:<Widget> [
          // Center(child: Image.asset('assets/images/child-1.png')),
         LoadingManager(
          isLoading: _isLoading,
           child: SingleChildScrollView(child: Column(
             crossAxisAlignment: CrossAxisAlignment.end,
               children: [

                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: RichText(
                     text: TextSpan(

                       text: " اهلا بك يا",
                       style: const TextStyle(
                         color: Colors.blueAccent,
                         fontSize: 26,
                         fontWeight: FontWeight.bold,
                       ),
                       children: [
                         TextSpan(
                           text: fullName == null ? 'user' : fullName,
                           style: TextStyle(
                             color: second.withOpacity(0.7),
                             fontSize: 25,
                             fontWeight: FontWeight.w600,
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),


                 const Divider(
                   thickness: 2,
                 ),
                 const SizedBox(
                   height: 3,
                 ),
                 _listTiles(
                   title: 'الاتصال بالمشرف ',

                   icon: IconlyLight.call,
                   onPressed: () async {
                     launch("tel://${number}");
                   },
                   color: second,
                 ),

                 _listTiles(
                   title: 'المعلومات الشخصية',

                   icon: IconlyLight.profile,
                   onPressed: () async {
                     GlobalMethods.navigateTo(
                         ctx: context, routeName: UserInfoShow.routeName);
                   },
                   color: second,
                 ),

                 _listTiles(
                   title: 'نصائح ومعلومات',
                   icon: IconlyLight.infoSquare,
                   onPressed: () {
                     GlobalMethods.navigateTo(
                         ctx: context, routeName: TipsAndInformation.routeName);
                   },
                   color: second,
                 ),
                 _listTiles(
                   title: 'الاكلات المقترحة',
                   icon: IconlyLight.ticket,
                   onPressed: () {
                     GlobalMethods.navigateTo(
                         ctx: context, routeName: FoodScreen.routeName);
                   },
                   color: second,
                 ),
                 _listTiles(
                   title: 'المراكز الصحية',
                   icon: IconlyLight.ticket,
                   onPressed: () {
                     GlobalMethods.navigateTo(
                         ctx: context, routeName: HealthCenter.routeName);
                   },
                   color: second,
                 ),
                 _listTiles(
                   title: 'مطورة التطبيق',
                   icon: IconlyLight.unlock,
                   onPressed: () {
                     GlobalMethods.navigateTo(
                         ctx: context, routeName: DeveloperScreen.routeName);

                   },
                   color: second,
                 ),
                 _listTiles(
                   title: 'نافذة الأهل',
                   icon: IconlyLight.edit,
                   onPressed: () {
                     GlobalMethods.navigateTo(
                         ctx: context, routeName: BottomBarParentScreen.routeName);

                   },
                   color: second,
                 ),
                 SwitchListTile(
                   title: TextWidget(
                     text: themeState.getDarkTheme ? 'الوضع الليلي' : 'الوضع النهاري',
                     color: second,
                     textSize: 18,
                     // isTitle: true,
                   ),
                   secondary: Icon(themeState.getDarkTheme
                       ? Icons.dark_mode_outlined
                       : Icons.light_mode_outlined),
                   onChanged: (bool value) {
                     setState(() {
                       themeState.setDarkTheme = value;
                     });
                   },
                   value: themeState.getDarkTheme,
                 ),

                 _listTiles(
                   title: user == null ? 'تسجيل الدخول' : 'تسجيل الخروج',
                   icon: user == null ? IconlyLight.login : IconlyLight.logout,
                   onPressed: () {
                     if (user == null) {
                       Navigator.of(context).push(
                         MaterialPageRoute(
                           builder: (context) => const LoginScreen(),
                         ),
                       );
                       return;
                     }
                     GlobalMethods.warningDialog(
                         title: 'Sign out',
                         subtitle: 'هل تريد حقا تسجيل الخروج؟',
                         fct: () async {
                           await authInstance.signOut();
                           Navigator.of(context).push(
                             MaterialPageRoute(
                               builder: (context) => const LoginScreen(),
                             ),
                           );
                         },
                         context: context);
                   },
                   color: second,
                 ),

               ],
           ),),
         ),
        ],
      ),
    );
  }
}
Widget _listTiles({
  required String title,
  String? subtitle,
  required IconData icon,
  required Function onPressed,
  required Color color,
}) {
  return ListTile(
    title: TextWidget(
      text: title,
      color: color,
      textSize: 22,
      isTitle: true,
    ),
    subtitle: TextWidget(
      text: subtitle == null ? "" : subtitle,
      color: color,
      textSize: 18,
    ),
    trailing: Icon(icon),

    onTap: () {
      onPressed();
    },
  );
}
