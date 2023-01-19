import 'dart:ffi';

import 'package:card_swiper/card_swiper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';
import '../../../consts/contss.dart';
import '../../../consts/firebase_consts.dart';
import '../../../consts/theme_data.dart';
import '../../../fetch_screen.dart';
import '../../services/auth_screen.dart';
import '../../services/global_methods.dart';
import '../../widgets/auth_button.dart';
import '../../widgets/lodaing_manger.dart';
import '../../widgets/text_widget.dart';
import 'chose_actor.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/LoginScreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Map<String,dynamic>? _userData;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _fullNameController = TextEditingController();
  final _motherNameController = TextEditingController();
  final _SupervisorController = TextEditingController();
  final _ageChildController = TextEditingController();
  final _typeofDiabetesController = TextEditingController();
  final _numofshoutController = TextEditingController();
  final _passController = TextEditingController();
  final _fullNameFocusNode = FocusNode();
  final _emailFocusNode = FocusNode();
  final _motherNameFocusNode = FocusNode();
  final _SupervisorFocusNode = FocusNode();
  final _ageChildFocusNode = FocusNode();
  final _typeofDiabetesFocusNode = FocusNode();
  final _numofshoutFocusNode = FocusNode();
  final _passFocusNode = FocusNode();
  var _obscureText = true;
  @override
  void dispose() {
    _emailController.dispose();
    _emailFocusNode.dispose();
    _fullNameController.dispose();
    _motherNameController.dispose();
    _SupervisorController.dispose();
    _ageChildController.dispose();
    _typeofDiabetesController.dispose();
    _numofshoutController.dispose();
    _fullNameFocusNode.dispose();
    _motherNameFocusNode.dispose();
    _SupervisorFocusNode.dispose();
    _ageChildFocusNode.dispose();
    _typeofDiabetesFocusNode.dispose();
    _numofshoutFocusNode.dispose();
    _passFocusNode.dispose();
    _passController.dispose();
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
        await authInstance.createUserWithEmailAndPassword(
            email: _emailController.text.toLowerCase().trim(),
            password: _passController.text.trim());
        final User? user = authInstance.currentUser;
        final uid = user!.uid;
        await FirebaseFirestore.instance.collection('users').doc(uid).set({
          'id': uid,
          'fullName': _fullNameController.text,
          'motherName': _motherNameController.text,
          'Supervisor': _SupervisorController.text,
          'ageChild': _ageChildController.text,
          'typeofDiabetes': _typeofDiabetesController.text,
          'createdAt': Timestamp.now(),
          'numofshout':_numofshoutController.text,
          'actor': actor,
          'wight': "ادخل قيمة",
          'tall': "ادخل قيمة",
          'bloodType': "ادخل قيمة",
          'gender': "ادخل قيمة",
          'userCart':[],
        });
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const ChooseActor(),
        ));
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

    return Scaffold(
      
      body: LoadingManager(
        isLoading: _isLoading,
        child: Stack(children: [
          Center(child: Image.asset('assets/images/login.png')),

          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(
                    height: 50.0,
                  ),
                  TextWidget(
                    text: 'ASOUL & ASOULA',
                    color: Colors.white,
                    textSize: 30,
                    isTitle: true,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextWidget(
                    text: "اهلا وسهلا صديقي املئ المعلومات للإنطلاق",
                    color: second,
                    textSize: 18,
                    isTitle: false,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Form(
                      key: _formKey,
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextFormField(
                            textInputAction: TextInputAction.next,
                            onEditingComplete: () => FocusScope.of(context)
                                .requestFocus(_motherNameFocusNode),
                            keyboardType: TextInputType.name,
                            controller: _fullNameController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "املئ الفراغ";
                              } else {
                                return null;
                              }
                            },
                            textAlign: TextAlign.end,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              hintText: 'الاسم الثلاثي للطفل',
                              hintStyle: TextStyle(color: Colors.white),
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
                            height: 20,
                          ),
                          TextFormField(
                            focusNode: _motherNameFocusNode,
                            textInputAction: TextInputAction.next,
                            onEditingComplete: () => FocusScope.of(context)
                                .requestFocus(_SupervisorFocusNode),
                            keyboardType: TextInputType.name,
                            controller: _motherNameController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "";
                              } else {
                                return null;
                              }
                            },
                            textAlign: TextAlign.end,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              hintText: 'اسم الأم',
                              hintStyle: TextStyle(color: Colors.white),
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
                            height: 20,
                          ),
                          //Password
                          TextFormField(
                            focusNode: _ageChildFocusNode,
                            textInputAction: TextInputAction.next,
                            onEditingComplete: () => FocusScope.of(context)
                                .requestFocus(_typeofDiabetesFocusNode),
                            keyboardType: TextInputType.text,
                            controller: _ageChildController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "";
                              } else {
                                return null;
                              }
                            },
                            textAlign: TextAlign.end,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              hintText: 'عمر الطفل',
                              hintStyle: TextStyle(color: Colors.white),
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
                            height: 20,
                          ),
                          TextFormField(
                            focusNode: _typeofDiabetesFocusNode,
                            textInputAction: TextInputAction.next,
                            onEditingComplete: () => FocusScope.of(context)
                                .requestFocus(_emailFocusNode),
                            keyboardType: TextInputType.name,
                            controller: _typeofDiabetesController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "";
                              } else {
                                return null;
                              }
                            },
                            textAlign: TextAlign.end,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              hintText: 'نوع السكري ',
                              hintStyle: TextStyle(color: Colors.white),
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
                          TextFormField(
                            focusNode: _emailFocusNode,
                            textInputAction: TextInputAction.next,
                            onEditingComplete: () => FocusScope.of(context)
                                .requestFocus(_passFocusNode),
                            keyboardType: TextInputType.name,
                            controller: _emailController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "";
                              } else {
                                return null;
                              }
                            },
                            textAlign: TextAlign.end,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              hintText: 'ايميل الطفل او المشرف',
                              hintStyle: TextStyle(color: Colors.white),
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
                            height: 20,
                          ),
                          TextFormField(
                            focusNode: _passFocusNode,
                            textInputAction: TextInputAction.next,
                            onEditingComplete: () => FocusScope.of(context)
                                .requestFocus(_numofshoutFocusNode),
                            keyboardType: TextInputType.name,
                            controller: _passController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "";
                              } else {
                                return null;
                              }
                            },
                            textAlign: TextAlign.end,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              hintText: 'كلمة السر ',
                              hintStyle: TextStyle(color: Colors.white),
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
                            height: 20,
                          ),

                          TextFormField(
                            focusNode: _numofshoutFocusNode,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.done,
                            onEditingComplete: _submitFormOnLogin,
                            controller: _numofshoutController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "";
                              } else {
                                return null;
                              }
                            },
                            style: const TextStyle(color: Colors.white),
                            maxLines: 2,
                            textAlign: TextAlign.end,
                            decoration: const InputDecoration(
                              hintText: 'عدد الجرعات حسب طبيب الطفل',
                              hintStyle: TextStyle(color: Colors.white),
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
                        ],
                      ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),

                  AuthButton(
                    buttonText: 'تسجيل الدخول',
                    fct: () {
                      _submitFormOnLogin();
                    },
                  ),






                  

                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
