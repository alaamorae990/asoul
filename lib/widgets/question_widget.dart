import 'package:asoul/consts/theme_data.dart';
import 'package:asoul/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/health_centers_model.dart';
import '../model/question_model.dart';
import '../model/recomundation_model.dart';
import '../model/tipes_model.dart';

class QuestionCard extends StatelessWidget {
  const   QuestionCard({
    Key? key,
    required this.itemIndex,
    required this.questionmodel,
    required this.press,
  }) : super(key: key);
  final int itemIndex;
  final QuestionModel questionmodel;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(height: 15,),
            Text(
              textAlign: TextAlign.end,
                  questionmodel.title,
                  style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontFamily: 'ElMessiri',fontSize: 20),
                ),
            Text(
              textAlign: TextAlign.end,
              questionmodel.subtitle ,
              style: TextStyle(color: Colors.black.withOpacity(0.8),fontSize: 18,fontWeight: FontWeight.w700,fontFamily: 'ElMessiri'),
            ),
            // SizedBox(height: 5,),

            Divider(thickness: 3,),
            // const Spacer(),

          ],
        ),
      ),
    );
  }
}
