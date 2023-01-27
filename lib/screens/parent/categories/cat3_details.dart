import 'package:asoul/consts/theme_data.dart';
import 'package:flutter/material.dart';

import '../../../model/tipes_model.dart';
import '../../../widgets/deatils_product.dart';
class Element {
  final String title;
  final String imageUrl;
  final String explanation;
  final String i1;
  final String i2;
  final String i3;
  final String i4;
  Element(  {
    required this.title,
    required  this.i1,
    required  this.i2,
    required  this.i3,
    required  this.i4,
    required this.imageUrl,
    required this.explanation,
  });
}
class Cat3Body extends StatefulWidget {


  const Cat3Body({Key? key, }) : super(key: key);

  @override
  State<Cat3Body> createState() => _Cat3BodyState();
}

class _Cat3BodyState extends State<Cat3Body> {
  List<Element> elements = [
    Element(
      title: 'حصص تحتوي على 15 جرام من الكربوهيدرات للنشويات',
      imageUrl: 'assets/images/4-2.png',
      explanation: '',
      i1: 'assets/images/mael1.png',
      i2: 'assets/images/mael2.png',
      i3: 'assets/images/mael3.png',
      i4: 'assets/images/Empty.png',
    ),
    Element(
      title: 'حساب الكربوهيدرات ',
      imageUrl: 'assets/images/4-1.png',
      explanation:  ' هي طريقة لتخطيط وجبة الطعام للمصابين بداء السكري وخاصة حاملي مضخة الأنسولين ومعتمده على حساب عدد جرامات الكربوهيدرات أو عدد الحصص الموجودة في وجبة الطعام توجد طريقتان لحساب الكربوهيدرات والنشويات: 1- حساب الكربوهيدرات بالجرامات -2- حساب الكربوهيدرات بالوحدات أو الحصص الغذائية -(تحتوي كل حصة واحده من الطعام على 15 جرام من الكربوهيدرات ، تتواجد الكربوهيدرات في الفواكه، النشويات، الألبان والسكريات)',
      i1: 'assets/images/Empty.png',
      i2: 'assets/images/Empty.png',
      i3: 'assets/images/Empty.png',
      i4: 'assets/images/Empty.png',
    ),
    Element(
      title: 'أكلات شائعه في المملكه العربية السعودية وتركبيها التقريبي لكل 100 جرام',
      imageUrl: 'assets/images/4-3.png',
      i1: 'assets/images/t-mael1.png',
      i2: 'assets/images/t-mael3.png',
      i3: 'assets/images/t-mael4.png',
      i4: 'assets/images/Empty.png',
      explanation: '',
      // Image.asset(""),
      // Image.asset(""),
      // Image.asset(""),
      // Image.asset(""),
    ),

  ];
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
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // number of columns
              ),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,

              itemCount: elements.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) => DetailPage(element: elements[index]),
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          var begin = Offset(0.0, 1.0);
                          var end = Offset.zero;
                          var curve = Curves.ease;

                          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

                          return SlideTransition(
                            position: animation.drive(tween),
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                  child: SingleChildScrollView(
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: <Widget>[

                            Image.asset(elements[index].imageUrl),
                            SizedBox(height: 8.0),
                            Text(elements[index].title, textAlign:TextAlign.right,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'ElMessiri',
                                color: Colors.blueAccent,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            // Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: Text(
            //     ':حساب الكربوهيدرات ',
            //     textAlign: TextAlign.right,
            //     style: TextStyle(
            //       fontSize: 18.0,
            //       fontWeight: FontWeight.w600,
            //       fontFamily: 'ElMessiri',
            //       color: Colors.blueAccent,
            //
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: Text(
            //     ' هي طريقة لتخطيط وجبة الطعام للمصابين بداء السكري وخاصة حاملي مضخة الأنسولين ومعتمده على حساب عدد جرامات الكربوهيدرات أو عدد الحصص الموجودة في وجبة الطعام توجد طريقتان لحساب الكربوهيدرات والنشويات: 1- حساب الكربوهيدرات بالجرامات -2- حساب الكربوهيدرات بالوحدات أو الحصص الغذائية -(تحتوي كل حصة واحده من الطعام على 15 جرام من الكربوهيدرات ، تتواجد الكربوهيدرات في الفواكه، النشويات، الألبان والسكريات)',
            //     textAlign: TextAlign.right,
            //     style: TextStyle(
            //       fontSize: 18.0,
            //       fontWeight: FontWeight.w600,
            //       fontFamily: 'ElMessiri',
            //       color: Colors.black.withOpacity(0.6),
            //
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: Text(
            //     ' حصص تحتوي على 15 جرام من الكربوهيدرات للنشويات',
            //     textAlign: TextAlign.right,
            //     style: TextStyle(
            //       fontSize: 18.0,
            //       fontWeight: FontWeight.w600,
            //       fontFamily: 'ElMessiri',
            //       color: Colors.blueAccent,
            //
            //     ),
            //   ),
            // ),
            // Image.asset("assets/images/mael1.png"),
            // Image.asset("assets/images/mael2.png"),
            // Image.asset("assets/images/mael3.png"),
            //
            // Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: Text(
            //     ' أكلات شائعه في المملكه العربية السعودية وتركبيها التقريبي لكل 100 جرام',
            //     textAlign: TextAlign.right,
            //     style: TextStyle(
            //       fontSize: 18.0,
            //       fontWeight: FontWeight.w600,
            //       fontFamily: 'ElMessiri',
            //       color: Colors.blueAccent,
            //
            //     ),
            //   ),
            // ),
            // Image.asset("assets/images/t-mael1.png"),
            // Image.asset("assets/images/t-mael2.png"),
            // Image.asset("assets/images/t-mael3.png"),
            // Image.asset("assets/images/t-mael4.png"),

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
class DetailPage extends StatelessWidget {
  final Element element;

  DetailPage({Key? key, required this.element}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: primary,
        title: Center(child: Text(element.title)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Image.asset(element.imageUrl),
              Divider(thickness: 3,color: Colors.pink,),
              SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(element.explanation,
                  textAlign: TextAlign.right,
                  style: TextStyle(

                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ElMessiri',
                    color: Colors.black,
                  ),
                ),

              ),
              Image.asset(element.i1),
              Image.asset(element.i2),
              Image.asset(element.i3),
              Image.asset(element.i4),
            ],
          ),
        ),
      ),
    );
  }
}
