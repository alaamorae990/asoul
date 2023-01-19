import 'package:flutter/material.dart';

import '../../consts/theme_data.dart';
import '../../model/question_model.dart';
import '../../widgets/question_widget.dart';
import '../../widgets/recomundation_widget.dart';
class QuestionFaqScreeen extends StatefulWidget {
  const QuestionFaqScreeen({Key? key}) : super(key: key);

  @override
  State<QuestionFaqScreeen> createState() => _QuestionFaqScreeenState();
}

class _QuestionFaqScreeenState extends State<QuestionFaqScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: primary,

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 2.0),
              decoration: BoxDecoration(
                color: second,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              // scrollDirection: Axis.vertical,
              shrinkWrap: true,

              itemCount: questionmodel.length,
              itemBuilder: (context, index) => QuestionCard(
                itemIndex: index,
                questionmodel:questionmodel[index] ,
                press: () {

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
