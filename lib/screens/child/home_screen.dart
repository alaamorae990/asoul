import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../consts/theme_data.dart';
import '../../model/food_model.dart';
import '../../widgets/food_card.dart';
import '../../widgets/quiz.dart';
import '../../widgets/quizs/quiz_main.dart';
import '../../widgets/text_widget.dart';
import '../../widgets/utils.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _points = 0;

  void _incrementPoints() {
    setState(() {
      _points++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final color = Utils(context).color;

    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor:second2,

        leadingWidth: 150,


        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset('assets/images/logo.png', fit: BoxFit.cover,height: 50,),
            Text('عسول و عسولة',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),

          ],
        ),
      ),
        backgroundColor:Color(0xff70184a),
        body: Stack(
            children:  <Widget>[
        Image.asset('assets/images/01.png'),
      Center(child: Image.asset('assets/images/4.png')),





           SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Column(
                  children: [
                    SingleChildScrollView(
                      child: Container(
                        margin: EdgeInsets.only(top: 2.0),
                        decoration: BoxDecoration(
                          color: primary.withOpacity(0.2),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(22),
                            topRight: Radius.circular(22),
                            bottomLeft:Radius.circular(22),
                            bottomRight: Radius.circular(22)
                          ),
                        ),
                        height: 200,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 225.0,
                              width: 140.0,
                              child: ClipRRect(
                                child: Image.asset(
                                  "assets/images/14.png",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            Container(
                              height: 200.0,
                              width: 140.0,

                              child: ClipRRect(

                                child: Image.asset(
                                  "assets/images/15.png",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
             Divider(thickness: 2,
                   color: Colors.black),
                    TextWidget(text: "لنلعب لعبة اختيار الاكلات الصحية", color: Colors.white, textSize: 20,isTitle: true,),
                        SingleChildScrollView(
                          child: Container(
                            margin: EdgeInsets.only(top: 2.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black,
                                  width: 4.0
                              ),
                            ),
                            height: MediaQuery
                                .of(context)
                                .size
                                .width * 0.8,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Question(
                                      correctImage:"assets/images/h1.png" ,
                                      image1: "assets/images/h1.png",
                                      title1: 'خيارة',
                                      image2: "assets/images/n1.png",
                                      title2: 'آيس كريم',
                                    ),

                                    Divider(thickness: 3,color: Colors.amber,),
                                    Question(
                                      correctImage:"assets/images/h2.png" ,
                                      image1: "assets/images/n2.png",
                                      title1: 'شوكلاتة',
                                      image2: "assets/images/h2.png",
                                      title2: 'معكرونة',
                                    ),
                                    Divider(thickness: 3,color: Colors.amber,),
                                    Question(
                                      correctImage:"assets/images/h3.png" ,
                                      image1: "assets/images/h3.png",
                                      title1: 'جزر',
                                      image2: "assets/images/n3.png",
                                      title2: 'مشروب غازي',
                                    ),
                                    Divider(thickness: 3,color: Colors.amber,),
                                  ],
                                ),
                              ),


                          //   child: Column(
                          //     children: [
                          //       Text("Points: $_points"),
                          //       Expanded(
                          //         child: Row(
                          //           children: [
                          //             Expanded(
                          //             child: GestureDetector(
                          //               onTap: () {
                          //                 _incrementPoints();
                          //               },
                          //               child: Image.asset("assets/images/2-13.png"),
                          //       ),
                          // ),
                          //                 Expanded(
                          //                   child: GestureDetector(
                          //                     onTap: () {
                          //                       // _playWrongSound();
                          //                     },
                          //                     child: Image.asset("assets/images/2-2.png"),
                          //                   ),
                          //                 ),
                          //           ],
                          //         )
                          //       )
                          //     ],
                          //   ),
                          ),
                        ),
                    Divider(thickness: 2,
                        color: Colors.black),
                    TextWidget(
                      text: 'اميرة عابد جوخة',
                      maxLines: 1,
                      color:second2,
                      textSize: 20,
                      isTitle: true,
                    ),

                    //
                    // SingleChildScrollView(
                    //   child: Container(
                    //     margin: EdgeInsets.only(top: 2.0),
                    //     decoration: BoxDecoration(
                    //       color: primary.withOpacity(0.6),
                    //       borderRadius: BorderRadius.only(
                    //         topLeft: Radius.circular(40),
                    //         topRight: Radius.circular(40),
                    //       ),
                    //     ),
                    //     height: 400,
                    //     width: double.infinity,
                    //     child:ListView.builder(
                    //       // physics: NeverScrollableScrollPhysics(),
                    //       scrollDirection: Axis.vertical,
                    //       shrinkWrap: true,
                    //
                    //       itemCount: foodModel.length,
                    //       itemBuilder: (context, index) => FoodCard(
                    //         itemIndex: index,
                    //         foodModel: foodModel[index],
                    //         press: () {
                    //
                    //         },
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
      ],
        ),

    );
  }
}