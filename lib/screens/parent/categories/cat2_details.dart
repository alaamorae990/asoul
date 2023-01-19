import 'package:asoul/consts/theme_data.dart';
import 'package:flutter/material.dart';

import '../../../model/tipes_model.dart';
import '../../../widgets/deatils_product.dart';

class Cat2Body extends StatelessWidget {


  const Cat2Body({Key? key, }) : super(key: key);
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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'كيف تتم عمليه هضم الطعام وإفراز الأنسولين لدى الطفل السليم (الغير مصاب بداء السكري) ',
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
                'عندما يأكل الطفل الطعام تذهب جميع مكوناته من مواد نشويه ودهنيه وبروتينيه إلى المعده ومن ثم إلى الأمعاء الدقيقه حيث هنالك يتم هضم الطعام بواسطه الأحماض الموجوده في المعده وكذلك بإفراز الإنزيمات الخاصه لهضم الطعام في الأمعاء الدقيقه عملية الهضم هذه تحول جميع المكونات السابقه إلى سكر بسيط يسمى الجلوكوز الذي يمتص من الأمعاء الدقيقه ويذهب للدم ، يقوم الدم بعد ذلك بتوزيع الجلوكوز إلى جميع خلايا الجسم لتوليد الطاقة الناتجة عن إحتراق الجلوكوز داخل الخلايا بواسطة هرمون الأنسولين ',
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
                ' ماهو دور الأنسولين داخل خلايا الجسم فيما سبق ذكره؟',
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
                'يعمل كمفتاح للخلية من أجل السماح لسكر الجلوكوز العبور داخل خلايا الجسم المختلفه 2-بعد السماح لسكر الجلوكوز العبور داخل خلايا الجسم يحترق هذا السكر بواسطة الإنسولين لإنتاج الطاقة الحرارية اللازمة لعمل كل خلية من خلايا الجسم المختلفة 3-الفائض من سكر الجلوكوز يتحول إلى مادة الجليوكوجين والتي يتم تخزينها في الكبد ليتم استخدامها عند فترات الصيام أو أوقات الأكل المحدود ',
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
                ': الغذاء الصحي لمرضى داء السكري',
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
                ' للوصول لغذاء صحي متوازن  لأطفال داء السكري:- تقليل تناول الأطعمه ذات السكر العالي أو الدهون المشبعه من أصل حيواني والحصول على تغذيه متوازنه من جميع العناصر الغذائيه - الحرص على المتابعة مع أخصائية تغذيه علاجيه والحرص على تعاون الأهل مع الطفل عن طريق التزامهم بالغذاء الصحي كي لا يشعر الطفل بالوحدة والنبذ ومن ثم عنادهم - يجب ان يحتوي غذاء طفل السكري على جميع العناصر الغذائية، ولكن بكميات محدده - تعتمد الوجبات الغذائية الرئيسية على ما تقدره أخصائية التغذية نظرا لطول، عمر،وزن المريض وتختلف الخطة الغذائية من شخص لأخر ',
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
                ': الهرم الغذائي',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'ElMessiri',
                  color: Colors.blueAccent,

                ),
              ),
            ),
            Image.asset("assets/images/alhram.png"),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'وتتمثل كما يلي: قاعدة الهرم الغذائي: ويمثل أنواع الغذاء الذي يحبذ بالإكثار منها خلال اليوم وأمثله ذلك الخضروات بجميع أنواعها والتي لا تحتوي على نسب عالية من السكر او السعرات الحرارية وكذلك ايضا البقوليات والخضروات والفواكه وخبز الحب لاحتوائها جميعا على الألياف وسط الهرم الغذائي:وهي الأطعمة التي تستهلك من الإنسان ويكون حذرا في كميه أكلها كاللحوم (يفضل أكل البيضاء عن الحمراء)، السمك،الوادن ويفضل ازاله الجلد الخارجي، الحليب ومشتقاته ويحبذ تناول قليل الدسم من هذه الأنواع لجميع افراد الأسره تضامنا مع المصاب بالداء أعلى الهرم الغذائي:وهي الأطعمه المحظوره والتي يجب تناول كميات قليله جدا منها مثل سكر المائده، الزبده،الأيسكريم وغيرها من الأطعمه التي تحتوي على سعرات عالية ',
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
                ':إرشادات غذائية ',
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
                '- إذا نام الطفل مبكرا ينبغي إيقاظه عند الساعة الثانية عشر ليلا لإعطاءه وجبه خفيفة  أو كوب حليب منعا لانخفاض السكر وحدوث التشنجات ويفضل توزيع السعرات الحرارية اليومية على النمط التالي: المواد السكرية المعقدة من 50-60% من المجموع الكلي للسعرات الحرارية -2- المواد الدهنية بنسبه 30% ولا تتجاوز نسبه الدهون المشبعة 10% -3-المواد البروتينية 20% -4- الخضار والفواكه على مدار اليوم وينصح بإعطاء الطفل سته وجبات ثلاث منها رئيسيه والأخرى خفيفه موزعه بين الإفطار والغذاء    بين الغذاء والعشاء، وعند الساعه الثانيه عشر أو بعد منتصف الليل ,والتقليل من تناول المواد السكريه كالحلوى والكعك والبيبسي في حاله الحفلات والمناسبات يرجى إعطاء جرعه انسولين صافي اعلى قبل الوجبه وذلك لزياده كميه الأكل المقدمة في الحفلات والمناسبات' ,
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
                ' ',
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
                '',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'ElMessiri',
                  color: Colors.black.withOpacity(0.6),

                ),
              ),
            ),
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
