
import 'package:asoul/screens/categories_screen.dart';
import 'package:asoul/screens/child/developer_screen.dart';
import 'package:asoul/screens/child/health_center.dart';
import 'package:asoul/screens/child/home_screen.dart';
import 'package:asoul/screens/child_or_parent.dart';
import 'package:asoul/screens/parent/btm_bar_parent.dart';
import 'package:asoul/screens/parent/parent_screen.dart';
import 'package:asoul/screens/parent/table_screen.dart';
import 'package:asoul/services/auth_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:provider/provider.dart';

import 'consts/enum.dart';
import 'consts/menu_info.dart';
import 'consts/theme_data.dart';
import 'fetch_screen.dart';
import 'provider/dark_theme_provider.dart';
import 'screens/child/chose_actor.dart';
import 'screens/child/tips_and_information.dart';
import 'screens/child/user.dart';
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  var initializationSettingsAndroid = AndroidInitializationSettings('codex_logo');
  var initializationSettingsIOS = IOSInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
      onDidReceiveLocalNotification: (int id, String? title, String? body, String? payload) async {});
  var initializationSettings = InitializationSettings(android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
  await flutterLocalNotificationsPlugin.initialize(initializationSettings, onSelectNotification: (String? payload) async {
    if (payload != null) {
      debugPrint('notification payload: ' + payload);
    }
  });
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  void getCurrentAppTheme() async {
    themeChangeProvider.setDarkTheme =
        await themeChangeProvider.darkThemePrefs.getTheme();
  }

  @override
  void initState() {
    getCurrentAppTheme();
    super.initState();
  }
 final Future<FirebaseApp> _firebaseInitialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _firebaseInitialization,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Scaffold(
                  body: Center(
                child: CircularProgressIndicator(),
              )),
            );
          } else if (snapshot.hasError) {
            const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Scaffold(
                  body: Center(
                child: Text('An error occured'),
              )),
            );
          }
          return MultiProvider(
            providers: [
                      Provider<FirebaseAuthMethods>(
          create: (_) => FirebaseAuthMethods(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) => context.read<FirebaseAuthMethods>().authState,
          initialData: null,
        ),
              ChangeNotifierProvider(create: (_) {
                return themeChangeProvider;
              }),
              ChangeNotifierProvider<MenuInfo>(
                create: (context) => MenuInfo(MenuType.clock),
                child: CategoriesScreen(),
              ),
              // ChangeNotifierProvider(
              //   create: (_) => ProductsProvider(),
              // ),
              //              ChangeNotifierProvider(
              //   create: (_) => CartProvider(),
              // ),  
             
            ],
            child: Consumer<DarkThemeProvider>(
                builder: (context, themeProvider, child) {
              return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'عسول وعسولة',
                  theme: Styles.themeData(themeProvider.getDarkTheme, context),
                  home:  const FetchScreen(),
                  routes:  {
                    UserInfoShow.routeName: (ctx) => const UserInfoShow(),
                    TipsAndInformation.routeName: (ctx) => const TipsAndInformation(),
                    HealthCenter.routeName: (ctx) => const HealthCenter(),
                    DeveloperScreen.routeName: (ctx) => const DeveloperScreen(),
                    ParentScreen.routeName: (ctx) => const ParentScreen(),
                    BottomBarParentScreen.routeName: (ctx) => const BottomBarParentScreen(),
                    // LoginScreen.routeName: (ctx) => const LoginScreen(),
                    // ForgetPasswordScreen.routeName: (ctx) =>
                    //     const ForgetPasswordScreen(),
                    // AskTaskScreen.routeName: (ctx) =>  AskTaskScreen(),
                    // CategoriesScreen.routeName: (ctx) =>  CategoriesScreen(),
                    // PhoneScreen.routeName: (ctx) =>  PhoneScreen(),
                    
                  });
            }),
          );
        }
        );
  }
}
