import 'package:asoul/consts/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/health_centers_model.dart';
import '../model/recomundation_model.dart';
import '../model/tipes_model.dart';

class RecomundatioCard extends StatelessWidget {
  const   RecomundatioCard({
    Key? key,
    required this.itemIndex,
    required this.recomundationmodel,
    required this.press,
  }) : super(key: key);
  final int itemIndex;
  final RecomundationModel recomundationmodel;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(

        children: [

          SingleChildScrollView(
            child: Container(

              padding: EdgeInsets.symmetric(horizontal: 15),
              height: size.height*0.3,
              width: size.width*0.6,
              child: Image.asset(
                recomundationmodel.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
            SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 5),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                textAlign: TextAlign.end,
                recomundationmodel.title,
                style: TextStyle(color: primary,fontWeight: FontWeight.w600,fontFamily: 'ElMessiri'),
              ),
            ),
          ),
          Divider(thickness: 3,),
          // const Spacer(),

        ],
      ),
    );
  }
}
