import 'package:flutter/material.dart';

import '../../consts/theme_data.dart';
import '../../model/food_model.dart';
import '../../widgets/food_card.dart';
class FoodScreen extends StatefulWidget {
  static const routeName = "/FoodScreen";
  const FoodScreen({Key? key}) : super(key: key);

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
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
            Image.asset('assets/images/logo.png', fit: BoxFit.cover,height: 50,),
            Text('عسول و عسولة',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),

          ],
        ),
      ),
      body: //
      SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 2.0),
          decoration: BoxDecoration(
            color: primary.withOpacity(0.6),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),

          width: double.infinity,
          child:ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,

            itemCount: foodModel.length,
            itemBuilder: (context, index) => FoodCard(
              itemIndex: index,
              foodModel: foodModel[index],
              press: () {

              },
            ),
          ),
        ),
      ),
    );
  }
}
