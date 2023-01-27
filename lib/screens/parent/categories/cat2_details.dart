import 'package:asoul/consts/theme_data.dart';
import 'package:flutter/material.dart';

import '../../../model/tipes_model.dart';
import '../../../widgets/deatils_product.dart';
class Element {
  final String title;
  final String imageUrl;
  final String explanation;

  Element({
    required this.title,
    required this.imageUrl,
    required this.explanation,
  });
}
class Cat2Body extends StatefulWidget {


  const Cat2Body({Key? key, }) : super(key: key);

  @override
  State<Cat2Body> createState() => _Cat2BodyState();
}

class _Cat2BodyState extends State<Cat2Body> {
  List<Element> elements = [

    Element(
      title: 'ماهو دور الأنسولين داخل خلايا الجسم فيما سبق ذكره؟',
      imageUrl: 'assets/images/3-1.png',
      explanation:   'يعمل كمفتاح للخلية من أجل السماح لسكر الجلوكوز العبور داخل خلايا الجسم المختلفه 2-بعد السماح لسكر الجلوكوز العبور داخل خلايا الجسم يحترق هذا السكر بواسطة الإنسولين لإنتاج الطاقة الحرارية اللازمة لعمل كل خلية من خلايا الجسم المختلفة 3-الفائض من سكر الجلوكوز يتحول إلى مادة الجليوكوجين والتي يتم تخزينها في الكبد ليتم استخدامها عند فترات الصيام أو أوقات الأكل المحدود ',

    ),
    Element(
      title: 'كيف تتم عمليه هضم الطعام وإفراز الأنسولين لدى الطفل السليم (الغير مصاب بداء السكري)',
      imageUrl: 'assets/images/3-2.png',
      explanation: 'عندما يأكل الطفل الطعام تذهب جميع مكوناته من مواد نشويه ودهنيه وبروتينيه إلى المعده ومن ثم إلى الأمعاء الدقيقه حيث هنالك يتم هضم الطعام بواسطه الأحماض الموجوده في المعده وكذلك بإفراز الإنزيمات الخاصه لهضم الطعام في الأمعاء الدقيقه عملية الهضم هذه تحول جميع المكونات السابقه إلى سكر بسيط يسمى الجلوكوز الذي يمتص من الأمعاء الدقيقه ويذهب للدم ، يقوم الدم بعد ذلك بتوزيع الجلوكوز إلى جميع خلايا الجسم لتوليد الطاقة الناتجة عن إحتراق الجلوكوز داخل الخلايا بواسطة هرمون الأنسولين',
    ),
    Element(
      title:   ' الهرم الغذائي',
      imageUrl: 'assets/images/3-3.png',
      explanation: 'وتتمثل كما يلي: قاعدة الهرم الغذائي: ويمثل أنواع الغذاء الذي يحبذ بالإكثار منها خلال اليوم وأمثله ذلك الخضروات بجميع أنواعها والتي لا تحتوي على نسب عالية من السكر او السعرات الحرارية وكذلك ايضا البقوليات والخضروات والفواكه وخبز الحب لاحتوائها جميعا على الألياف وسط الهرم الغذائي:وهي الأطعمة التي تستهلك من الإنسان ويكون حذرا في كميه أكلها كاللحوم (يفضل أكل البيضاء عن الحمراء)، السمك،الوادن ويفضل ازاله الجلد الخارجي، الحليب ومشتقاته ويحبذ تناول قليل الدسم من هذه الأنواع لجميع افراد الأسره تضامنا مع المصاب بالداء أعلى الهرم الغذائي:وهي الأطعمه المحظوره والتي يجب تناول كميات قليله جدا منها مثل سكر المائده، الزبده،الأيسكريم وغيرها من الأطعمه التي تحتوي على سعرات عالية ',

    ),
    Element(
      title:  ' الغذاء الصحي لمرضى داء السكري',
        imageUrl:"assets/images/3-4.png",
      explanation:   ' للوصول لغذاء صحي متوازن  لأطفال داء السكري:- تقليل تناول الأطعمه ذات السكر العالي أو الدهون المشبعه من أصل حيواني والحصول على تغذيه متوازنه من جميع العناصر الغذائيه - الحرص على المتابعة مع أخصائية تغذيه علاجيه والحرص على تعاون الأهل مع الطفل عن طريق التزامهم بالغذاء الصحي كي لا يشعر الطفل بالوحدة والنبذ ومن ثم عنادهم - يجب ان يحتوي غذاء طفل السكري على جميع العناصر الغذائية، ولكن بكميات محدده - تعتمد الوجبات الغذائية الرئيسية على ما تقدره أخصائية التغذية نظرا لطول، عمر،وزن المريض وتختلف الخطة الغذائية من شخص لأخر ',

    ),
    Element(
      title:  'إرشادات غذائية ',
      imageUrl:"assets/images/3-5.png",
explanation:   '- إذا نام الطفل مبكرا ينبغي إيقاظه عند الساعة الثانية عشر ليلا لإعطاءه وجبه خفيفة  أو كوب حليب منعا لانخفاض السكر وحدوث التشنجات ويفضل توزيع السعرات الحرارية اليومية على النمط التالي: المواد السكرية المعقدة من 50-60% من المجموع الكلي للسعرات الحرارية -2- المواد الدهنية بنسبه 30% ولا تتجاوز نسبه الدهون المشبعة 10% -3-المواد البروتينية 20% -4- الخضار والفواكه على مدار اليوم وينصح بإعطاء الطفل سته وجبات ثلاث منها رئيسيه والأخرى خفيفه موزعه بين الإفطار والغذاء    بين الغذاء والعشاء، وعند الساعه الثانيه عشر أو بعد منتصف الليل ,والتقليل من تناول المواد السكريه كالحلوى والكعك والبيبسي في حاله الحفلات والمناسبات يرجى إعطاء جرعه انسولين صافي اعلى قبل الوجبه وذلك لزياده كميه الأكل المقدمة في الحفلات والمناسبات' ,

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
                      image: "assets/images/1-2.png",
                    ),
                  ),
                  Divider(thickness: 3,),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(vertical: 16 / 2),
                    child: Text(
                     'الغذاء وداء السكري',
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
                            // Text(elements[index].title),
                            // SizedBox(height: 8.0),
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
            //     'كيف تتم عمليه هضم الطعام وإفراز الأنسولين لدى الطفل السليم (الغير مصاب بداء السكري) ',
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
            //     'عندما يأكل الطفل الطعام تذهب جميع مكوناته من مواد نشويه ودهنيه وبروتينيه إلى المعده ومن ثم إلى الأمعاء الدقيقه حيث هنالك يتم هضم الطعام بواسطه الأحماض الموجوده في المعده وكذلك بإفراز الإنزيمات الخاصه لهضم الطعام في الأمعاء الدقيقه عملية الهضم هذه تحول جميع المكونات السابقه إلى سكر بسيط يسمى الجلوكوز الذي يمتص من الأمعاء الدقيقه ويذهب للدم ، يقوم الدم بعد ذلك بتوزيع الجلوكوز إلى جميع خلايا الجسم لتوليد الطاقة الناتجة عن إحتراق الجلوكوز داخل الخلايا بواسطة هرمون الأنسولين ',
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
            //     ' ماهو دور الأنسولين داخل خلايا الجسم فيما سبق ذكره؟',
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
            //     'يعمل كمفتاح للخلية من أجل السماح لسكر الجلوكوز العبور داخل خلايا الجسم المختلفه 2-بعد السماح لسكر الجلوكوز العبور داخل خلايا الجسم يحترق هذا السكر بواسطة الإنسولين لإنتاج الطاقة الحرارية اللازمة لعمل كل خلية من خلايا الجسم المختلفة 3-الفائض من سكر الجلوكوز يتحول إلى مادة الجليوكوجين والتي يتم تخزينها في الكبد ليتم استخدامها عند فترات الصيام أو أوقات الأكل المحدود ',
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
            //     ': الغذاء الصحي لمرضى داء السكري',
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
            //     ' للوصول لغذاء صحي متوازن  لأطفال داء السكري:- تقليل تناول الأطعمه ذات السكر العالي أو الدهون المشبعه من أصل حيواني والحصول على تغذيه متوازنه من جميع العناصر الغذائيه - الحرص على المتابعة مع أخصائية تغذيه علاجيه والحرص على تعاون الأهل مع الطفل عن طريق التزامهم بالغذاء الصحي كي لا يشعر الطفل بالوحدة والنبذ ومن ثم عنادهم - يجب ان يحتوي غذاء طفل السكري على جميع العناصر الغذائية، ولكن بكميات محدده - تعتمد الوجبات الغذائية الرئيسية على ما تقدره أخصائية التغذية نظرا لطول، عمر،وزن المريض وتختلف الخطة الغذائية من شخص لأخر ',
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
            //     ': الهرم الغذائي',
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
            // Image.asset("assets/images/alhram.png"),
            // Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: Text(
            //     'وتتمثل كما يلي: قاعدة الهرم الغذائي: ويمثل أنواع الغذاء الذي يحبذ بالإكثار منها خلال اليوم وأمثله ذلك الخضروات بجميع أنواعها والتي لا تحتوي على نسب عالية من السكر او السعرات الحرارية وكذلك ايضا البقوليات والخضروات والفواكه وخبز الحب لاحتوائها جميعا على الألياف وسط الهرم الغذائي:وهي الأطعمة التي تستهلك من الإنسان ويكون حذرا في كميه أكلها كاللحوم (يفضل أكل البيضاء عن الحمراء)، السمك،الوادن ويفضل ازاله الجلد الخارجي، الحليب ومشتقاته ويحبذ تناول قليل الدسم من هذه الأنواع لجميع افراد الأسره تضامنا مع المصاب بالداء أعلى الهرم الغذائي:وهي الأطعمه المحظوره والتي يجب تناول كميات قليله جدا منها مثل سكر المائده، الزبده،الأيسكريم وغيرها من الأطعمه التي تحتوي على سعرات عالية ',
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
            //     ':إرشادات غذائية ',
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
            //     '- إذا نام الطفل مبكرا ينبغي إيقاظه عند الساعة الثانية عشر ليلا لإعطاءه وجبه خفيفة  أو كوب حليب منعا لانخفاض السكر وحدوث التشنجات ويفضل توزيع السعرات الحرارية اليومية على النمط التالي: المواد السكرية المعقدة من 50-60% من المجموع الكلي للسعرات الحرارية -2- المواد الدهنية بنسبه 30% ولا تتجاوز نسبه الدهون المشبعة 10% -3-المواد البروتينية 20% -4- الخضار والفواكه على مدار اليوم وينصح بإعطاء الطفل سته وجبات ثلاث منها رئيسيه والأخرى خفيفه موزعه بين الإفطار والغذاء    بين الغذاء والعشاء، وعند الساعه الثانيه عشر أو بعد منتصف الليل ,والتقليل من تناول المواد السكريه كالحلوى والكعك والبيبسي في حاله الحفلات والمناسبات يرجى إعطاء جرعه انسولين صافي اعلى قبل الوجبه وذلك لزياده كميه الأكل المقدمة في الحفلات والمناسبات' ,
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
            //     ' ',
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
            //     '',
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
            ],
          ),
        ),
      ),
    );
  }
}
