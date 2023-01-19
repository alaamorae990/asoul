import 'package:asoul/consts/theme_data.dart';
import 'package:asoul/widgets/text_widget.dart';
import 'package:flutter/material.dart';



class DeveloperScreen extends StatelessWidget {
  static const routeName = "/DeveloperScreen";
  const DeveloperScreen({
    Key? key,
  }) : super(key: key);


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
      body: Stack(
        children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/images/vision.png')),
        ),
          Container(
            height: size.height*0.24,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5),
                      blurRadius: 20,
                      color: Colors.blueGrey),
                ]),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 10,),
        Align(
              alignment: Alignment.topRight,
              child: TextWidget(
                text: ':منشئه ومطوره التطبيق ',
                color: Colors.black,
                textSize:20 ,
                isTitle: true,
              ),
        ),
                  Align(
                    alignment: Alignment.topRight,
                    child: TextWidget(
                      text: 'الاسم : أميره عابد خوجه  ',
                      color: primary,
                      textSize:20 ,
                      isTitle: true,
                    ),
                  ),

                  Divider(thickness: 2,),
                  Align(
                    alignment: Alignment.topRight,
                    child: TextWidget(
                      text: 'تحت اشراف استشاري الغدد الصماء للأطفال د.عبد المعين الآغا ',

                      color: second,
                      textSize:20 ,
                      isTitle: true,
                    ),
                  ),
                  Divider(thickness: 2,),
                SizedBox(height: 10,),
                  SizedBox(height: 10,),
        TextWidget(
              text: 'رؤية التطبيق :انطلاقا من برنامجي رؤيه المملكه 2030 (جوده حياه الفرد وتحول القطاع الصحي ) تم العمل على عسول ليكون أول تطبيق الكتروني لأطفال السكري واهاليهم باللغه العربيه للتثقيف و ضبط جرعات الانسولين ',
              color: Colors.pink.withOpacity(0.9),
              textSize:20 ,
              isTitle: true,
        ),
                ],
              ),
            ),
          )
      ],
      ),
    );
  }
}
