import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../consts/firebase_consts.dart';
import '../../consts/theme_data.dart';
import '../../provider/dark_theme_provider.dart';
import '../../services/global_methods.dart';
import '../../widgets/lodaing_manger.dart';
import '../../widgets/text_widget.dart';

class UserInfoShow extends StatefulWidget {
  static const routeName = "/UserInfoShow";
  const UserInfoShow({Key? key}) : super(key: key);

  @override
  State<UserInfoShow> createState() => _UserInfoShowState();
}

class _UserInfoShowState extends State<UserInfoShow> {

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
  @override
  void dispose() {
    _fullNameTextController.dispose();
    _motherNameTextController.dispose();
    _ageChildTextController.dispose();
    _numofshoutTextController.dispose();
    _typeofDiabetesTextController.dispose();
    super.dispose();
  }
  String? fullName;
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
          backgroundColor: primary,
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
          child: SingleChildScrollView(

            child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
              children: [

                const Divider(
                  thickness: 2,
                ),


                _listTiles(
                  title: 'الاسم الكامل',
                  subtitle: fullName,
                  icon: IconlyLight.profile,
                  onPressed: () async {
                    await _showfullnameDialog();
                  },
                  color: second,
                ),

                _listTiles(
                  title: 'اسم الأم',
                  subtitle: motherName,
                  icon: IconlyLight.heart,
                  onPressed: () async {
                    await _showmotherDialog();
                  },
                  color: second,
                ),
                _listTiles(
                  title: 'عمر الطفل',
                  subtitle: ageChild,
                  icon: IconlyLight.calendar,
                  onPressed: () async {
                    await _showageDialog();
                  },
                  color: second,
                ),
                _listTiles(
                  title: 'عدد الجرعات حسب الطبيب',
                  subtitle: numofshout,
                  icon: IconlyLight.chart,
                  onPressed: () async {
                    await _showNumDialog();
                  },
                  color: second,
                ),
                _listTiles(
                  title: 'نوع المرض السكري',
                  subtitle: typeofDiabetes,
                  icon: IconlyLight.category,
                  onPressed: () async {
                    await _showtypeDialog();
                  },
                  color: second,
                ),


              ],
            ),
          ),
        ));
  }

  Future<void> _showfullnameDialog() async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('تحديث'),
            content: TextField(
              controller: _fullNameTextController,
              maxLines: 5,
              decoration: const InputDecoration(hintText: "اسمك"),
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
                      'fullName': _fullNameTextController.text,
                    });
                    Navigator.pop(context);
                    setState(() {
                      fullName = _fullNameTextController.text;
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
  Future<void> _showmotherDialog() async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('تحديث'),
            content: TextField(
              controller: _motherNameTextController,
              maxLines: 5,
              decoration: const InputDecoration(hintText: "اسم الأم"),
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
                      'motherName': _motherNameTextController.text,
                    });
                    Navigator.pop(context);
                    setState(() {
                      motherName = _motherNameTextController.text;
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
  Future<void> _showageDialog() async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('تحديث'),
            content: TextField(
              controller: _ageChildTextController,
              maxLines: 5,
              decoration: const InputDecoration(hintText: "العمر"),
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
                      'ageChild': _ageChildTextController.text,
                    });
                    Navigator.pop(context);
                    setState(() {
                      ageChild = _ageChildTextController.text;
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
  Future<void> _showNumDialog() async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('تحديث'),
            content: TextField(
              controller: _numofshoutTextController,
              maxLines: 5,
              decoration: const InputDecoration(hintText: "عدد الجرعات"),
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
                      'numofshout': _numofshoutTextController.text,
                    });
                    Navigator.pop(context);
                    setState(() {
                      numofshout = _numofshoutTextController.text;
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
  Future<void> _showtypeDialog() async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('تحديث'),
            content: TextField(
              controller: _typeofDiabetesTextController,
              maxLines: 5,
              decoration: const InputDecoration(hintText: "نوع المرض"),
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
                      'typeofDiabetes': _typeofDiabetesTextController.text,
                    });
                    Navigator.pop(context);
                    setState(() {
                      typeofDiabetes = _typeofDiabetesTextController.text;
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
      // trailing: const Icon(IconlyLight.arrowRight2),
      onTap: () {
        onPressed();
      },
    );
  }


}
