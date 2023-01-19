import 'package:flutter/material.dart';

import '../../consts/theme_data.dart';
import '../../model/health_centers_model.dart';
import '../../model/recomundation_model.dart';
import '../../widgets/recomundation_widget.dart';
class RecoumndationDetails extends StatefulWidget {
  const RecoumndationDetails({Key? key}) : super(key: key);

  @override
  State<RecoumndationDetails> createState() => _RecoumndationDetailsState();
}

class _RecoumndationDetailsState extends State<RecoumndationDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: primary,
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

              itemCount: recomundationmodel.length,
              itemBuilder: (context, index) => RecomundatioCard(
                itemIndex: index,
                recomundationmodel:recomundationmodel[index] ,
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
