import 'package:asoul/consts/theme_data.dart';
import 'package:asoul/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/health_centers_model.dart';
import '../model/question_model.dart';
import '../model/recomundation_model.dart';
import '../model/saico_model.dart';
import '../model/tipes_model.dart';
import '../screens/parent/question_faq.dart';
import '../screens/parent/question_screen.dart';

class SaicoCard extends StatefulWidget {
  const   SaicoCard({
    Key? key,
    required this.itemIndex,
    required this.saicoModel,
    // required this.press,
  }) : super(key: key);
  final int itemIndex;
  final SaicoModel saicoModel;

  @override
  State<SaicoCard> createState() => _SaicoCardState();
}

class _SaicoCardState extends State<SaicoCard> {
  // final VoidCallback press;
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:

        GestureDetector (
          onTap: (){
            DeliveryOrBackup2(title: widget.saicoModel.subTitle,
                image: widget.saicoModel.image,

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
                widget.saicoModel.title,
                style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontFamily: 'ElMessiri',fontSize: 20),
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
  required String image,
  required Function fct2,
  required BuildContext context,
})
async {
  await showDialog(
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: AlertDialog(
            content: Image.asset(image),

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

                  'حسنا', style: TextStyle(color: Colors.cyan,fontSize: 18),

                ),
              ),

            ],
          ),
        );
      });

}
