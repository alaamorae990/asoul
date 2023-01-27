import 'package:asoul/screens/parent/question_faq.dart';
import 'package:asoul/screens/parent/saico_screen.dart';
import 'package:flutter/material.dart';

import '../../consts/theme_data.dart';
import 'details_recoumdation.dart';
class QuestionScreenParent extends StatefulWidget {
  const QuestionScreenParent({Key? key}) : super(key: key);

  @override
  State<QuestionScreenParent> createState() => _QuestionScreenParentState();
}

class _QuestionScreenParentState extends State<QuestionScreenParent> {
  @override
  Widget build(BuildContext context) {
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
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              height: 222.0,
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RecoumndationDetails(
                      ),
                    ),
                  );
                },
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 160.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 15),
                                blurRadius: 25,
                                color: Colors.black12),
                          ]),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,0,0,30),
                            child: Container(
                              child: Image.asset(
                                "assets/images/commandments.png",
                                fit: BoxFit.fill,
                              ),
                              height: 180,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'وصايا لمرضى داء السكري ',
                        style: TextStyle(color: primary,fontFamily: 'ElMessiri',fontWeight: FontWeight.bold),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              height: 222.0,
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QuestionFaqScreeen(
                      ),
                    ),
                  );
                },
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 160.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 15),
                                blurRadius: 25,
                                color: Colors.black12),
                          ]),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,0,0,30),
                            child: Container(
                              child: Image.asset(
                                "assets/images/question.png",
                                fit: BoxFit.fill,
                              ),
                              height: 180,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'اسئلة شائعة ',
                        style: TextStyle(color: primary,fontFamily: 'ElMessiri',fontWeight: FontWeight.bold),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              height: 222.0,
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SaicoScreeen(
                      ),
                    ),
                  );
                },
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 160.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 15),
                                blurRadius: 25,
                                color: Colors.black12),
                          ]),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,0,0,30),
                            child: Container(
                              child: Image.asset(
                                "assets/images/saico.png",
                                fit: BoxFit.fill,
                              ),
                              height: 180,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'الجانب النفسي لطفل السكري ',
                        style: TextStyle(color: primary,fontFamily: 'ElMessiri',fontWeight: FontWeight.bold),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ) ,
    );
  }
}
