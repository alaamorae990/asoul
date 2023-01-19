import 'package:asoul/consts/theme_data.dart';
import 'package:flutter/material.dart';

import '../model/tipes_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.itemIndex,
    required this.tips,
    required this.press,
  }) : super(key: key);
  final int itemIndex;
  final Tips tips;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      height: 222.0,
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
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,0,30),
                    child: Container(
                      child: Image.asset(
                        tips.image,
                        fit: BoxFit.fill,
                      ),
                        height: 180,
                    ),
                  ),
                ],
              ),
            ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text(
                     tips.title,
                     style: TextStyle(color: primary,fontFamily: 'ElMessiri',fontWeight: FontWeight.bold),
                   ),
                 ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                tips.title,
                style: TextStyle(color: primary,fontFamily: 'ElMessiri',fontWeight: FontWeight.bold),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
