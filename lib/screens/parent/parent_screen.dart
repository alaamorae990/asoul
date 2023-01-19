import 'package:asoul/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../consts/theme_data.dart';
class ParentScreen extends StatefulWidget {
  static const routeName = "/ParentScreen";
  const ParentScreen({Key? key}) : super(key: key);

  @override
  State<ParentScreen> createState() => _ParentScreenState();
}

class _ParentScreenState extends State<ParentScreen> {
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
            Image.asset('assets/images/logo.png', fit: BoxFit.cover,height: 50,),
            Text('عسول و عسولة',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),

          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10
              ),
              height: 150.0,
              child: InkWell(
                onTap: (){
                  launchUrl(Uri.parse("https://www.youtube.com/watch?v=7SLD3YQtNoE"));
                },
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
                        height: 160.0,
                        width: 220.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(11.0),
                          child: Image.asset(
                            "assets/images/pen.jpg",
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
                                  "قلم الأنسولين",
                                  style: TextStyle(color: primary,fontWeight: FontWeight.bold),
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

                                    "طريقة الأستخدام",
                                    maxLines: 3,
                                    textAlign: TextAlign.end,

                                    style: TextStyle(color: second,fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ),
                              const Spacer(),

                            ],
                          ),
                        ),
                    ),
                  ],
                ),

              ),

            ),
            Divider(thickness: 3,),
            TextWidget(text: "جدول متابعة حقن الأنسولين", color: Colors.black, textSize: 22),
            SizedBox(height: 10,),

          ],
        ),
      ),
    );
  }
}
