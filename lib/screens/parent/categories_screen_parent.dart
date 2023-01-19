import 'package:asoul/screens/parent/categories/cat2_details.dart';
import 'package:flutter/material.dart';

import '../../consts/theme_data.dart';
import '../../model/tipes_model.dart';
import '../../widgets/card_info.dart';
import 'categories/cat3_details.dart';
import 'categories/cat4_details.dart';
import 'details.dart';
class CategoriesScreenParent extends StatefulWidget {
  const CategoriesScreenParent({Key? key}) : super(key: key);

  @override
  State<CategoriesScreenParent> createState() => _CategoriesScreenParentState();
}

class _CategoriesScreenParentState extends State<CategoriesScreenParent> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: second2,
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
        children: [
          Center(child: Image.asset('assets/images/4.png')),
         SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 2.0),
                decoration: const BoxDecoration(
                  color: second,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,

                itemCount: products.length,
                itemBuilder: (context, index) => ProductCard(
                  itemIndex: index,
                  tips: products[index],
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          tips: products[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          height: 222.0,
          child: InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Cat2Body(
                  ),
                ),
              );

            },
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 160.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Colors.white,
                      boxShadow: const [
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
                            "assets/images/1-2.png",
                            fit: BoxFit.fill,
                          ),
                          height: 180,
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'الغذاء وداء السكري',
                    style: TextStyle(color: primary,fontFamily: 'ElMessiri',fontWeight: FontWeight.bold),
                  ),
                ),

              ],
            ),
          ),
        ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                height: 222.0,
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Cat3Body(
                        ),
                      ),
                    );
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
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0,0,0,30),
                              child: Container(
                                child: Image.asset(
                                  "assets/images/1-3.png",
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
                          'نظام حساب الحصص الغذائية ',
                          style: TextStyle(color: primary,fontFamily: 'ElMessiri',fontWeight: FontWeight.bold),
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                height: 222.0,
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Cat4Body(
                        ),
                      ),
                    );
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
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0,0,0,30),
                              child: Container(
                                child: Image.asset(
                                  "assets/images/1-4.png",
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
                          'السكري والحالات الخاصة',
                          style: TextStyle(color: primary,fontFamily: 'ElMessiri',fontWeight: FontWeight.bold),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        ],
      ),
    );
  }
}
