import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:uuid/uuid.dart';

import '../../consts/firebase_consts.dart';
import '../../consts/theme_data.dart';
import '../../services/global_methods.dart';
import '../../widgets/auth_button.dart';
import '../../widgets/lodaing_manger.dart';
import '../../widgets/text_widget.dart';
class TableScreen extends StatefulWidget {
  const TableScreen({Key? key}) : super(key: key);

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _m11Controller =
  TextEditingController(text: "");
  final TextEditingController _m2TextController =
  TextEditingController(text: "");
  final TextEditingController _m3TextController =
  TextEditingController(text: "");
  final TextEditingController _m4TextController =
  TextEditingController(text: "");
  final TextEditingController _a1TextController =
  TextEditingController(text: "");
  final TextEditingController _a2TextController =
  TextEditingController(text: "");
  final TextEditingController _a3TextController =
  TextEditingController(text: "");
  final TextEditingController _a4TextController =
  TextEditingController(text: "");
  final TextEditingController _e1TextController =
  TextEditingController(text: "");
  final TextEditingController _e2TextController =
  TextEditingController(text: "");
  final TextEditingController _e3TextController =
  TextEditingController(text: "");
  final TextEditingController _e4TextController =
  TextEditingController(text: "");
  final TextEditingController _e5TextController =
  TextEditingController(text: "");
  final TextEditingController _e6TextController =
  TextEditingController(text: "");

  @override
  void dispose() {
    _m11Controller.dispose();
    _m2TextController.dispose();
    _m3TextController.dispose();
    _m4TextController.dispose();
    _a1TextController.dispose();
    _a2TextController.dispose();
    _a3TextController.dispose();
    _a4TextController.dispose();
    _e1TextController.dispose();
    _e2TextController.dispose();
    _e3TextController.dispose();
    _e4TextController.dispose();
    _e5TextController.dispose();
    _e6TextController.dispose();
    super.dispose();
  }
  bool _isLoading = false;
  void _submitFormOnLogin() async {
    final isValid = _formKey.currentState!.validate();
    FocusScope.of(context).unfocus();

    if (isValid) {
      _formKey.currentState!.save();
      setState(() {
        _isLoading = true;
      });
      final _uuid = const Uuid().v4();
      try {
        String actor="1";
        final User? user = authInstance.currentUser;
        final uid = user!.uid;
        await FirebaseFirestore.instance.collection('users').doc(uid).update({
          'userTime': FieldValue.arrayUnion([
            {
              'takeTime': Timestamp.now(),
              'm1': _m11Controller.text ,
              'm2': _m2TextController.text ,
              'm3': '' ,
              'm4': '' ,
              'a1': '' ,
              'a2': '' ,
              'a3': '' ,
              'a4': '' ,
              'e1': '' ,
              'e2': '' ,
              'e3': '' ,
              'e4': '' ,
              'e5': '' ,
              'e6': '' ,
            }
          ])
        });
        await Fluttertoast.showToast(
          msg: "تمت الإضافة بنجاح",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
        );
      } on FirebaseException catch (error) {
        GlobalMethods.errorDialog(
            subtitle: '${error.message}', context: context);
        setState(() {
          _isLoading = false;
        });
      } catch (error) {
        GlobalMethods.errorDialog(subtitle: '$error', context: context);
        setState(() {
          _isLoading = false;
        });
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: second2,
        // shadowColor: Colors.amber,
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
        child: Stack(children: [
          Center(child: Image.asset('assets/images/logo.png')),
      Container(
        color: Colors.black.withOpacity(0.5),),
          SingleChildScrollView(child: Column(
            children: [


          Container(
            height: size.height*0.5,
            color: Colors.black.withOpacity(0.5),
          child:
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SingleChildScrollView(
                  child: Container(
                    // height: size.height*0.6,
                    color: Colors.blueAccent.withOpacity(0.5),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          TextWidget(
                            text: 'جرعة الصباح قبل الوجبة',
                            color: Colors.white,
                            textSize: 20,
                            isTitle: true,
                          ),
                          Form(

                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextFormField(
                                  textInputAction: TextInputAction.next,

                                  keyboardType: TextInputType.name,
                                  controller: _m11Controller,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "املئ الفراغ";
                                    } else {
                                      return null;
                                    }
                                  },
                                  textAlign: TextAlign.end,
                                  style: const TextStyle(color: Colors.white,fontFamily: 'ElMessiri', fontWeight: FontWeight.normal,),
                                  decoration: const InputDecoration(
                                    hintText: 'معدل الجرعة ',
                                    hintStyle: TextStyle(color: Colors.white,fontFamily: 'ElMessiri', fontWeight: FontWeight.normal,),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.red),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(

                                  textInputAction: TextInputAction.next,

                                  keyboardType: TextInputType.name,
                                  controller: _m2TextController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "";
                                    } else {
                                      return null;
                                    }
                                  },
                                  textAlign: TextAlign.end,
                                  style: const TextStyle(color: Colors.white,fontFamily: 'ElMessiri', fontWeight: FontWeight.normal,),
                                  decoration: const InputDecoration(
                                    hintText: 'معدل السكر',
                                    hintStyle: TextStyle(color: Colors.white,fontFamily: 'ElMessiri', fontWeight: FontWeight.normal,),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.red),
                                    ),
                                  ),
                                ),


                                ElevatedButton(
                                  child: Text(
                                    'تسجيل القيم',
                                    style: TextStyle(
                                        fontFamily: 'ElMessiri', fontWeight: FontWeight.normal, color: Colors.white, fontSize: 20),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.grey.withOpacity(0.5), // background (button) color
                                  ),
                                  onPressed: ()async{
                                    try {
                                      bool istake=true;
                                      final User? user = authInstance.currentUser;
                                      final uid = user!.uid;
                                      FirebaseFirestore.instance.collection('users').doc(uid).update({
                                        'userTime': FieldValue.arrayUnion([
                                          {
                                            'takeTime': Timestamp.now(),
                                            'm1': _m11Controller.text ,
                                            'm2': _m2TextController.text ,
                                            'm3': '' ,
                                            'm4': '' ,
                                            'a1': '' ,
                                            'a2': '' ,
                                            'a3': '' ,
                                            'a4': '' ,
                                            'e1': '' ,
                                            'e2': '' ,
                                            'e3': '' ,
                                            'e4': '' ,
                                            'e5': '' ,
                                            'e6': '' ,
                                          }
                                        ])
                                      });
                                      await Fluttertoast.showToast(
                                        msg: "تمت الإضافة بنجاح",
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.CENTER,
                                      );
                                    } on FirebaseException catch (error) {
                                      GlobalMethods.errorDialog(
                                          subtitle: '${error.message}', context: context);

                                    } catch (error) {
                                      GlobalMethods.errorDialog(subtitle: '$error', context: context);

                                    }
                                  },
                                ),
                        ],
                      ),
                      ),
                          TextWidget(
                            text: 'جرعة الصباح بعد الوجبة',
                            color: Colors.white,
                            textSize: 20,
                            isTitle: true,
                          ),
                          Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextFormField(
                                  textInputAction: TextInputAction.next,

                                  keyboardType: TextInputType.name,
                                  controller: _m11Controller,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "املئ الفراغ";
                                    } else {
                                      return null;
                                    }
                                  },
                                  textAlign: TextAlign.end,
                                  style: const TextStyle(color: Colors.white,fontFamily: 'ElMessiri', fontWeight: FontWeight.normal,),
                                  decoration: const InputDecoration(
                                    hintText: 'معدل الجرعة ',
                                    hintStyle: TextStyle(color: Colors.white,fontFamily: 'ElMessiri', fontWeight: FontWeight.normal,),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.red),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(

                                  textInputAction: TextInputAction.next,

                                  keyboardType: TextInputType.name,
                                  controller: _m2TextController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "";
                                    } else {
                                      return null;
                                    }
                                  },
                                  textAlign: TextAlign.end,
                                  style: const TextStyle(color: Colors.white,fontFamily: 'ElMessiri', fontWeight: FontWeight.normal,),
                                  decoration: const InputDecoration(
                                    hintText: 'معدل السكر',
                                    hintStyle: TextStyle(color: Colors.white,fontFamily: 'ElMessiri', fontWeight: FontWeight.normal,),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.red),
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  child: Text(
                                    'تسجيل القيم',
                                    style: TextStyle(
                                        fontFamily: 'ElMessiri', fontWeight: FontWeight.normal, color: Colors.white, fontSize: 20),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.grey.withOpacity(0.5), // background (button) color
                                  ),
                                  onPressed: ()async{
                                    try {
                                      bool istake=true;
                                      final User? user = authInstance.currentUser;
                                      final uid = user!.uid;
                                      FirebaseFirestore.instance.collection('users').doc(uid).update({
                                        'userTime': FieldValue.arrayUnion([
                                          {
                                            'takeTime': Timestamp.now(),
                                            'm1': _m11Controller.text ,
                                            'm2': _m2TextController.text ,
                                            'm3': '' ,
                                            'm4': '' ,
                                            'a1': '' ,
                                            'a2': '' ,
                                            'a3': '' ,
                                            'a4': '' ,
                                            'e1': '' ,
                                            'e2': '' ,
                                            'e3': '' ,
                                            'e4': '' ,
                                            'e5': '' ,
                                            'e6': '' ,
                                          }
                                        ])
                                      });
                                      await Fluttertoast.showToast(
                                        msg: "تمت الإضافة بنجاح",
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.CENTER,
                                      );
                                    } on FirebaseException catch (error) {
                                      GlobalMethods.errorDialog(
                                          subtitle: '${error.message}', context: context);

                                    } catch (error) {
                                      GlobalMethods.errorDialog(subtitle: '$error', context: context);

                                    }
                                  },
                                ),
                              ],
                            ),
                          ),

        ]
    ),
                    ),

                  ),
                ),

              ],
            ),
          ),
          ),
              Divider(thickness: 3,color: Colors.white,),
              TextWidget(text: "text", color: Colors.white, textSize: 18)
            ],
          ),
          ),
        ],
    ),
      )
    );
  }
  Widget _listTiles({
    required String title,
    String? subtitle,

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

      onTap: () {
        onPressed();
      },
    );
  }
}
