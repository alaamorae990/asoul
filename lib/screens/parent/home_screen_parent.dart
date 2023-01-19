import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';

import '../../consts/firebase_consts.dart';
import '../../consts/theme_data.dart';
import '../../provider/dark_theme_provider.dart';
import '../../services/global_methods.dart';
import '../../widgets/lodaing_manger.dart';
import '../../widgets/text_widget.dart';
class HomeScreenParent extends StatefulWidget {
  const HomeScreenParent({Key? key}) : super(key: key);

  @override
  State<HomeScreenParent> createState() => _HomeScreenParentState();
}

class _HomeScreenParentState extends State<HomeScreenParent> {
  final TextEditingController _fullNameTextController =
  TextEditingController(text: "");
  final TextEditingController _motherNameTextController =
  TextEditingController(text: "");
  final TextEditingController _ageChildTextController =
  TextEditingController(text: "");
  final TextEditingController _numofshoutTextController =
  TextEditingController(text: "");
  final TextEditingController _typeofDiabetesTextController =
  TextEditingController(text: "");
  final TextEditingController _wightTextController =
  TextEditingController(text: "");
  final TextEditingController _tallTextController =
  TextEditingController(text: "");
  final TextEditingController _bloodTypeTextController =
  TextEditingController(text: "");
  final TextEditingController _genderTextController =
  TextEditingController(text: "");

  @override
  void dispose() {
    _fullNameTextController.dispose();
    _motherNameTextController.dispose();
    _ageChildTextController.dispose();
    _numofshoutTextController.dispose();
    _typeofDiabetesTextController.dispose();
    _wightTextController.dispose();
    _tallTextController.dispose();
    _bloodTypeTextController.dispose();
    _genderTextController.dispose();
    super.dispose();
  }

  String? fullName;
  String ? actor;
  String? motherName;
  String? ageChild;
  String? numofshout;
  String? typeofDiabetes;
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
        _fullNameTextController.text = userDoc.get('fullName');
        fullName = userDoc.get('fullName');
        _motherNameTextController.text = userDoc.get('motherName');
        motherName = userDoc.get('motherName');
        _ageChildTextController.text = userDoc.get('ageChild');
        ageChild = userDoc.get('ageChild');
        _numofshoutTextController.text = userDoc.get('numofshout');
        numofshout = userDoc.get('numofshout');
        _typeofDiabetesTextController.text = userDoc.get('typeofDiabetes');
        typeofDiabetes = userDoc.get('typeofDiabetes');
        _wightTextController.text = userDoc.get('wight');
        _tallTextController.text = userDoc.get('tall');
        _bloodTypeTextController.text = userDoc.get('bloodType');
        _genderTextController.text = userDoc.get('gender');
        actor=userDoc.get('actor');
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
    final Color color = themeState.getDarkTheme ? Colors.white : Colors.black;
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: second2,
        shadowColor: Colors.amber,
        leadingWidth: 150,


        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assets/images/logo.png', fit: BoxFit.cover, height: 50,),
            Text('عسول و عسولة', style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w900),),

          ],
        ),
      ),
      body: LoadingManager(
        isLoading: _isLoading,
        child: Stack(
          children: <Widget>[

            Center(child: Image.asset('assets/images/4.png')),




            //



            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90.0),
                          color: minHandStatColor,
                        ),
                        child: GestureDetector(
                          child: Container(
                            height: MediaQuery
                                .of(context)
                                .size
                                .width * 0.40,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child:
                            actor =="1" ?
                            Image.asset(
                                "assets/images/14.png", fit: BoxFit.fitHeight):
                            Image.asset(
                                "assets/images/15.png", fit: BoxFit.fitHeight),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: TextSpan(
                          text: fullName == null ? 'user' : fullName,
                          style: const TextStyle(
                            color: Colors.black87,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),

                        ),
                      ),
                    ),
                  ),
                  Divider(thickness: 3, color: minHandStatColor,),
                  _listTiles(
                    title: 'الوزن',
                    subtitle: _wightTextController.text,
                    icon: IconlyBold.profile,
                    onPressed: () async {
                    await _showWightDialog();
                    },
                    color: Colors.black,
                  ),
                  _listTiles(
                    title: 'الطول',
                    subtitle: _tallTextController.text,
                    icon: IconlyBold.profile,
                    onPressed: () async {
                      await _showTallDialog();
                    },
                    color: Colors.black,
                  ),
                  _listTiles(
                    title: 'زمرة الدم',
                    subtitle:_bloodTypeTextController.text,
                    icon: IconlyBold.profile,
                    onPressed: () async {
                      await _showBloodTypeDialog();
                    },
                    color: Colors.black,
                  ),
                  _listTiles(
                    title: 'الجنس',
                    subtitle: actor =="1" ?'ذكر':'إنثى',
                    icon: IconlyBold.profile,
                    onPressed: () async {

                    },
                    color: Colors.black,
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
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
      subtitle:


      TextWidget(
        text: subtitle == null ? "" : subtitle,
        color: color,
        textSize: 18,
      ),
      trailing: Icon(icon),
      // trailing: const Icon(IconlyLight.arrowRight2),
      onTap: () {
        onPressed();
      },
    );
  }
  Future<void> _showWightDialog() async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('تحديث'),
            content: TextField(
              controller: _wightTextController,
              maxLines: 5,
              decoration: const InputDecoration(hintText: "الوزن"),
            ),
            actions: [
              TextButton(
                onPressed: () async {
                  String _uid = user!.uid;
                  try {
                    await FirebaseFirestore.instance
                        .collection('users')
                        .doc(_uid)
                        .update({
                      'wight': _wightTextController.text,
                    });
                    Navigator.pop(context);
                    setState(() {
                      _wightTextController.text = _wightTextController.text;
                    });
                  } catch (err) {
                    GlobalMethods.errorDialog(
                        subtitle: err.toString(), context: context);
                  }
                },
                child: const Text('تحديث'),
              ),
            ],
          );
        });
  }
  Future<void> _showTallDialog() async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('تحديث'),
            content: TextField(
              controller: _tallTextController,
              maxLines: 5,
              decoration: const InputDecoration(hintText: "الطول"),
            ),
            actions: [
              TextButton(
                onPressed: () async {
                  String _uid = user!.uid;
                  try {
                    await FirebaseFirestore.instance
                        .collection('users')
                        .doc(_uid)
                        .update({
                      'tall': _tallTextController.text,
                    });
                    Navigator.pop(context);
                    setState(() {
                      _tallTextController.text = _tallTextController.text;
                    });
                  } catch (err) {
                    GlobalMethods.errorDialog(
                        subtitle: err.toString(), context: context);
                  }
                },
                child: const Text('تحديث'),
              ),
            ],
          );
        });
  }
  Future<void> _showBloodTypeDialog() async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('تحديث'),
            content: TextField(
              controller: _bloodTypeTextController,
              maxLines: 5,
              decoration: const InputDecoration(hintText: "زمرة الدم"),
            ),
            actions: [
              TextButton(
                onPressed: () async {
                  String _uid = user!.uid;
                  try {
                    await FirebaseFirestore.instance
                        .collection('users')
                        .doc(_uid)
                        .update({
                      'bloodType': _bloodTypeTextController.text,
                    });
                    Navigator.pop(context);
                    setState(() {
                      _bloodTypeTextController.text = _bloodTypeTextController.text;
                    });
                  } catch (err) {
                    GlobalMethods.errorDialog(
                        subtitle: err.toString(), context: context);
                  }
                },
                child: const Text('تحديث'),
              ),
            ],
          );
        });
  }

}
