import 'package:asoul/consts/theme_data.dart';
import 'package:asoul/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../../model/tipes_model.dart';
import '../model/question_model.dart';


class DetailScreen2 extends StatelessWidget {
  final QuestionModel questionmodel;

  const DetailScreen2({Key? key, required this.questionmodel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
   Scaffold(
     // body: DeliveryOrBackup2(title: title, subtitle: subtitle, fct2: fct2, context: context),
   );
  }

  AppBar detialsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: primary,
      // elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(right: 16),
        icon: Icon(
          Icons.arrow_back,
          color: second,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        '',
        style: Theme.of(context).textTheme.bodyText2,
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
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
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
