import 'dart:ffi';

import 'package:card_swiper/card_swiper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


import 'package:provider/provider.dart';
import '../../consts/contss.dart';
import '../../consts/firebase_consts.dart';
import '../../consts/theme_data.dart';
import '../../fetch_screen.dart';
import '../services/auth_screen.dart';
import '../services/global_methods.dart';
import '../widgets/auth_button.dart';
import '../widgets/lodaing_manger.dart';
import '../widgets/text_widget.dart';
import 'child/login.dart';

class ChildOrParent extends StatefulWidget {
  static const routeName = '/ChildOrParent';
  const ChildOrParent({Key? key}) : super(key: key);

  @override
  State<ChildOrParent> createState() => _ChildOrParentState();
}

class _ChildOrParentState extends State<ChildOrParent> {
  Map<String,dynamic>? _userData;
  // final _emailTextController = TextEditingController();
  // final _passTextController = TextEditingController();
  // final _passFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  // late String facebookName;
  
  var _obscureText = true;
  @override
  void dispose() {
    // _emailTextController.dispose();
    // _passTextController.dispose();
    // _passFocusNode.dispose();
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
      try {
   
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
    print(_userData);
    return Scaffold(
      
      body: LoadingManager(
        isLoading: _isLoading,
        child: Stack(children: [
          Center(child: Image.asset('assets/images/logo.png')),
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
                    height: 100.0,
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
                    text: "  اهلا بك مع عسول وعسولة",
                    color: Colors.white,
                    textSize: 18,
                    isTitle: true,
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

                         
                        ],
                      )),

                  
                  const SizedBox(
                    height: 230
                    ,
                  ),
                   InkWell(
        onTap: () {
          _submitFormOnLogin();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          TextWidget(
              text: 'يرجئ الاختيار من اجل المتابعة', color: Colors.white, textSize: 22,isTitle: true,),
        ]),
      ),
                  // AuthButton(
                  //   fct: _submitFormOnLogin,
                  //   buttonText: 'Login',
                  // ),


                  const SizedBox(
                    height: 10,
                  ),
                  AuthButton(
                    fct: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    buttonText: 'الأهل',
                    primary: Colors.white,
                  ),
                   AuthButton(
                    fct: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    buttonText: 'الطفل',
                    primary: Colors.white,
                  )
                  
                  // RichText(
                  //     text: TextSpan(
                  //         text: 'Don\'t have an account?',
                  //         style: const TextStyle(
                  //             color: Colors.white, fontSize: 18),
                  //         children: [
                  //       TextSpan(
                  //           text: '  Sign up',
                  //           style: const TextStyle(
                  //               color: Colors.lightBlue,
                  //               fontSize: 18,
                  //               fontWeight: FontWeight.w600),
                  //           recognizer: TapGestureRecognizer()
                  //             ..onTap = () {
                  //               GlobalMethods.navigateTo(
                  //                   ctx: context,
                  //                   routeName: RegisterScreen.routeName);
                  //             }),
                  //     ]
                      
                  //   )
                  //   )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
