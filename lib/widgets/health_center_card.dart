import 'package:asoul/consts/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/health_centers_model.dart';
import '../model/tipes_model.dart';

class HealthCard extends StatelessWidget {
  const   HealthCard({
    Key? key,
    required this.itemIndex,
    required this.healthCenter,
    required this.press,
  }) : super(key: key);
  final int itemIndex;
  final HealthCenter healthCenter;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      height: 200.0,
      child: InkWell(
        onTap: press,
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
            Positioned(
              top: 0.0,
              left: 0.0,
              child: Container(

                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 160.0,
                width: 180.0,
                child: Image.asset(
                  healthCenter.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                bottom: 0.0,
                right: 0.0,
                child: SizedBox(
                  height: 136.0,
                  width: size.width - 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [

                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5),
                        child: Text(
                          healthCenter.title,
                          style: TextStyle(color: primary,fontWeight: FontWeight.bold),
                        ),
                      ),
                      // const Spacer(),
                      Text(

                        healthCenter.subTitle,
                        style: TextStyle(color: second,fontWeight: FontWeight.w300),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: ElevatedButton(
                            onPressed: (){
                              launch("tel://${healthCenter.number}");
                            },
                          child:  Text('  رقم التواصل : ${healthCenter.number} '),

                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
