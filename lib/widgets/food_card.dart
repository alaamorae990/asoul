import 'package:asoul/consts/theme_data.dart';
import 'package:asoul/widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/food_model.dart';
import '../model/health_centers_model.dart';
import '../model/tipes_model.dart';

class FoodCard extends StatelessWidget {
  const   FoodCard({
    Key? key,
    required this.itemIndex,
    required this.foodModel,
    required this.press,
  }) : super(key: key);
  final int itemIndex;
  final FoodModel foodModel;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final color = Utils(context).color;
    return
      Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      height: 150.0,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 160.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: second2.withOpacity(0.8),
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


                height: 160.0,
                width: 220.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(11.0),
                  child: Image.asset(
                    foodModel.image,
                    fit: BoxFit.fill,
                    

                  ),
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
                          foodModel.title,
                          style: TextStyle(color: color,fontWeight: FontWeight.bold),
                        ),
                      ),
                      // const Spacer(),
                      Container(
                        width: MediaQuery.of(context).size.width-250,

                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 300.0,
                            maxWidth: 300.0,
                            minHeight: 30.0,
                            maxHeight: 100.0,
                          ),
                        child: Text(

                          foodModel.subTitle,
                          maxLines: 3,
                          textAlign: TextAlign.end,
                          
                          style: TextStyle(color: color,fontWeight: FontWeight.w700),
                        ),
                      ),
                      ),
                      const Spacer(),

                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
