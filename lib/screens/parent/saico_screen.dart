import 'package:flutter/material.dart';

import '../../consts/theme_data.dart';
import '../../model/question_model.dart';
import '../../model/saico_model.dart';
import '../../widgets/question_widget.dart';
import '../../widgets/question_widget2.dart';
import '../../widgets/recomundation_widget.dart';
import '../../widgets/saico_card.dart';
import '../../widgets/text_widget.dart';
class SaicoScreeen extends StatefulWidget {
  const SaicoScreeen({Key? key}) : super(key: key);

  @override
  State<SaicoScreeen> createState() => _SaicoScreeenState();
}

class _SaicoScreeenState extends State<SaicoScreeen> {
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

              itemCount: saicoModel.length,
              itemBuilder: (context, index) => SaicoCard(
                itemIndex: index,
                saicoModel: saicoModel[index] ,

              ),
            ),
          ],
        ),
      ),
    );

  }
  Future<void> DeliveryOrBackup2({
    required String title,
    required String subtitle,
    required Function fct2,
    required BuildContext context,
  })
  async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title:
            Text(title),
            content: Text(subtitle),
            actions: [
              TextButton(
                onPressed: () {
                  fct2();
                  // if (Navigator.canPop(context)) {
                  //   Navigator.pop(context);
                  // }
                },
                child: TextWidget(
                  color: Colors.cyan,
                  text: 'حسنا',
                  textSize: 18,
                ),
              ),

            ],
          );
        });
    throw '';
  }
}
