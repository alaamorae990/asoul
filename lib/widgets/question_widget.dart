import 'package:asoul/consts/theme_data.dart';
import 'package:asoul/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/health_centers_model.dart';
import '../model/question_model.dart';
import '../model/recomundation_model.dart';
import '../model/tipes_model.dart';
import '../screens/parent/question_faq.dart';
import '../screens/parent/question_screen.dart';

class QuestionCard extends StatefulWidget {
  const   QuestionCard({
    Key? key,
    required this.itemIndex,
    required this.questionmodel,
    // required this.press,
  }) : super(key: key);
  final int itemIndex;
  final QuestionModel questionmodel;

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  // final VoidCallback press;
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:

        GestureDetector (
          onTap: (){
            DeliveryOrBackup2(title: widget.questionmodel.subtitle,

                fct2: (){
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const QuestionScreenParent(
                  //     ),
                  //   ),
                  // );
                },
                context: context);

          },

          child: Column(

mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // SizedBox(height: 15,),
              Text(
                textAlign: TextAlign.end,
                    widget.questionmodel.title,
                    style: TextStyle(color: primary,fontWeight: FontWeight.bold,fontFamily: 'ElMessiri',fontSize: 20),
                  ),
              // Text(
              //   textAlign: TextAlign.end,
              //   questionmodel.subtitle ,
              //   style: TextStyle(color: Colors.black.withOpacity(0.8),fontSize: 18,fontWeight: FontWeight.w700,fontFamily: 'ElMessiri'),
              // ),
              // SizedBox(height: 5,),

              Divider(thickness: 3,),
              // const Spacer(),

            ],
          ),
        ),
      ),
    );
  }
}
Future<void> DeliveryOrBackup2({
  required String title,

  required Function fct2,
  required BuildContext context,
})
async {
  await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title:
          Text(title,textAlign: TextAlign.right),

          actions: [
            TextButton(
              onPressed: () {
                fct2();
                if (Navigator.canPop(context)) {
                  Navigator.pop(context);
                }
              },
              child: Text(

                 '????????', style: TextStyle(color: Colors.cyan,fontSize: 18),

              ),
            ),

          ],
        );
      });

}
