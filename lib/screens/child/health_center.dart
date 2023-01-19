
import 'package:flutter/material.dart';

import '../../consts/theme_data.dart';
import '../../model/health_centers_model.dart';
import '../../model/tipes_model.dart';
import '../../widgets/card_info.dart';
import '../../widgets/health_center_card.dart';

class HealthCenter extends StatefulWidget {
  static const routeName = "/HealthCenter";
  const HealthCenter({Key? key}) : super(key: key);

  @override
  State<HealthCenter> createState() => _HealthCenterState();
}

class _HealthCenterState extends State<HealthCenter> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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

              itemCount: healthCenter.length,
              itemBuilder: (context, index) => HealthCard(
                itemIndex: index,
                healthCenter: healthCenter[index],
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
