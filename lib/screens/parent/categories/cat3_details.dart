import 'package:asoul/consts/theme_data.dart';
import 'package:flutter/material.dart';

import '../../../model/tipes_model.dart';
import '../../../widgets/deatils_product.dart';

class Cat3Body extends StatelessWidget {


  const Cat3Body({Key? key, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: detialsAppBar(context),
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(


              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(

                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: productimage(
                      size: size,
                      image: "assets/images/1-3.png",
                    ),
                  ),
                  Divider(thickness: 3,),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(vertical: 16 / 2),
                    child: Text(
                      'نظام حساب الحصص الغذائية ',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'ElMessiri',
                        color: second,
                      ),
                    ),
                  ),



                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                ':حساب الكربوهيدرات ',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'ElMessiri',
                  color: Colors.blueAccent,

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                ' هي طريقة لتخطيط وجبة الطعام للمصابين بداء السكري وخاصة حاملي مضخة الأنسولين ومعتمده على حساب عدد جرامات الكربوهيدرات أو عدد الحصص الموجودة في وجبة الطعام توجد طريقتان لحساب الكربوهيدرات والنشويات: 1- حساب الكربوهيدرات بالجرامات -2- حساب الكربوهيدرات بالوحدات أو الحصص الغذائية -(تحتوي كل حصة واحده من الطعام على 15 جرام من الكربوهيدرات ، تتواجد الكربوهيدرات في الفواكه، النشويات، الألبان والسكريات)',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'ElMessiri',
                  color: Colors.black.withOpacity(0.6),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                ' حصص تحتوي على 15 جرام من الكربوهيدرات للنشويات',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'ElMessiri',
                  color: Colors.blueAccent,

                ),
              ),
            ),
            Image.asset("assets/images/mael1.png"),
            Image.asset("assets/images/mael2.png"),
            Image.asset("assets/images/mael3.png"),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                ' أكلات شائعه في المملكه العربية السعودية وتركبيها التقريبي لكل 100 جرام',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'ElMessiri',
                  color: Colors.blueAccent,

                ),
              ),
            ),
            Image.asset("assets/images/t-mael1.png"),
            Image.asset("assets/images/t-mael2.png"),
            Image.asset("assets/images/t-mael3.png"),
            Image.asset("assets/images/t-mael4.png"),

          ],
        ),
      ),
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
}
