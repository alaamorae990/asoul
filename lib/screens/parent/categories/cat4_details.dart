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
class Cat4Body extends StatefulWidget {


  const Cat4Body({Key? key, }) : super(key: key);

  @override
  State<Cat4Body> createState() => _Cat4BodyState();
}

class _Cat4BodyState extends State<Cat4Body> {
  List<Element> elements = [
    Element(
      title: 'السكر خلال السفر والعطلات',
      imageUrl: 'assets/images/6-2.png',
      explanation:   'لا يوجد مانع من سفر الطفل المصاب بداء السكري في أي من الرحلات البريه والجوية والبحرية ويجب التأكد مما يلي: 1- خطاب من الطبيب المعالج يشرح فيه حالة الطفل الصحية وطريقه العلاج وجرعات الأنسولين 2- أخذ كميات مناسبه من الأنسولين وحفظها في مكان بارد ويفضل أخذ كميات أكبر في حال تلف واحده من العبوات توجد أخرى بديله 3- أخذ الكافي من الأبر وشرائط فحص الدم مع جهاز التحليل اليومي وذلك من أجل فحص سكر الدم خلال فتره السفر 4- أخذ قطع حلوى وعصير إحتياطا في حاله هبوط السكر 5- أخذ حقنه الجلوكاجون في حاله الهبوط الحاد او التشنج او الاغماء لاقدر الله 6- خطاب من الطبيب المعالج إلى مصلحة الجمارك موضحا سبب حمل ما تم ذكره سابقا ويفضل معرفه رقم الفاكس او الجوال للطبيب للاستفسارات خلال السفر 7- في حالات الرحلات الطويله خارج الحدود ونظرا لتغير الوقت بين بلد الاقلاع والوصول يفضل وضع خطه جديده مع الطبيب المعالج لأوقات اعطاء الأنسولين والوجبات الغذائيه ',

    ),
    Element(
      title: 'السكري والمدرسة',
      imageUrl: 'assets/images/6-1.png',
      explanation:     'ما الذي يجب عمله للأطفال المصابين بالسكر قبل ذهابهم إلى المدرسه في بدايه عامهم الجديد؟ 1- يجب على أهل الطفل أعلام اداره المدرسه بأن طفلهم مصاب بمرض السكري ويأخذ علاج الأنسولين مرتين في اليوم على الأقل 2- يجب على الطبيب المعالج إرسال تقرير طبي عن الطفل المصاب بداء السكري يشرح فيه حاله الطفل الصحية وطريقة علاجه 3- يرجى من الطبيب المعالج أن يذكر في تقريره النقاط التالية: - نرجو من المعلم السماح للطفل بأكل وجبات خفيفه أو شرب عصيرات خلال فتره الحصه الدراسيه داخل الفصل وعدم انتظار نهايه الوقت منعا لحدوث التشنجات والإغماء لاقدر الله - يفضل تسجيل الطفل بمدرسه قريبه من المستشفى إحتسابا للطوارئ - نرجو من معلم اللياقه البدنيه التأكد من أن الطفل أخذ حصته الغذائيه المناسبة قبل البدء في اي نشاط بدني - يفضل من معلم الطفل زياره عياده والتثقيف أكثر عن مرض السكري ',

    ),
    Element(
      title: 'الرياضة وداء السكري',
      imageUrl: 'assets/images/6-4.png',
      explanation:  'لرياضة أهمية كبرى لمرضى داء السكري، والرياضة تساعد على احتراق السكر في الدم وبالتالي تخفيض نسبته وتقليل احتياجات الطفل من الإنسولين بالإضافة إلى تخفيض نسبة الكوليسترول في الدم وكل هذه الأشياء تساعد على تقليل مضاعفات السكر في المستقبل وتسهل عملية عالج مرضى داء السكري كأمراض القلب والسمنة نقاط هامة : -يجب أن تكون الرياضة منتظمة ويحبذ أن تكون يوميا لمده لا تقل عن نصف ساعه كركوب الدراجه،المشي والسباحه - أعراض الهبوط قد تظهر بعد ساعات من انتهاء التمرين الرياضي - يجب قياس نسبه سكر الدم قبل القيام بالعمل الرياضي - يجب تناول وأخذ قطعه من الحلوى احتياطا قبل اي نشاط رياضي - اشتراك الاباء وافراد العائله يشجع الطفل على ممارسه الرياضه - في الحالات التي يود فيها الطفل ممارسه رياضه شاقه، يفضل خفض نسبه جرعه الانسولين الصافي في ذلك اليوم - الأنسولين هو العلاج الأول مصحوبا بالحميه ومن ثم الحركه والرياضة - في وقت السباحه، يفضل تواجد أشخاص يجيدون السباحه بالقرب من الطفل بالمسبح ' ,

    ),
    Element(
      title: 'داء السكري خلال سنوات البلوغ والمراهقة والشباب',
      imageUrl: 'assets/images/6-3.png',
      explanation:     'تعتبر فتره المراهقه من أهم وأصعب الفترات بالنسبه للشخص المصاب بالسكري وعائلته.هذه الفتره هي فترة انتقاليه ما بين مرحلة الطفولة والنضج ويصحبها عادة تغيرات فسيولوجيه ونفسيه واجتماعيه وذلك ناتج عن إفراز الهرمونات الجنسية عند كل من الذكور والإناث في هذه المرحله يتطلع الشاب أو الشابه إلى إيجاد ذاتيه مستقله ويصحبها صعوبه الاستماع للأهل أو الطبيب المعالج،ترك النصائح الغذائيه ورفض عمل التحاليل اليومية والإلتزام بجرعات الأنسولين. كل ذلك يؤدي إلى عدم السيطره على سكر الدم ومن ثم حدوث مضاعفات لاسمح الله وهنا بعض الخطوات والمعلومات الهامة لطريقه التعامل مع المراهقين: 1- يجب على الفريق الطبي المعالج إعادة التثقيف الصحي لمريض السكر الشاب أو الشابة مرة أخرى حيث أن التثقيف الصحي عند تشخيص المرض (عندما كان الشاب أو الشابة أطفال) كان مركزا على تثقيف من يعولهم ويرعاهم. أما في هذه المرحلة فهم قادرون على رعاية أنفسهم 2- يجب النقاش المفتوح العلمي الموضوعي معهم وعدم تخويفهم بالمضاعفات  لأن هذا الأسلوب قد يكون له رد فعل معاكس في هذه الفتره الحساسة من العمر 3-الإقناع بالأسلوب الحسن هو الطريق الوخيد الذي يجب إتباعه في هذه المرحلة 4- النصح حول المهن غير الممكنه لهم كخدمات الجيش،الشرطه،طيار جوي أو سائق عمومي 5- تزيد حاجه المراهق لجرعات الأنسولين نظرا للتغيرات الفسيولوجيه 6- بعض الفتيات قد ترتفع نسبة السكر لديهم خلال الدورة الشهريه وذلك لزياده الهرمونات المفرزه في تلك الفترة ',

    ),
    Element(
      title: 'الحج وداء السكري',
      imageUrl: 'assets/images/6-6.png',
      explanation: '1- لابد من أداء الفريضه مع شخص اخر ذو خبره جيده عن داء السكري وتكون لديه معرفه بحالات ارتفاع وانخفاض السكري وكيفيه استخدام جهاز السكري الموجود في الحقيبة 2- الحرص على لبس حذاء واسع ومريح للقدم قبل الإحرام وأخذ بطاقه تعريفيه بأنه مصاب بالسكري متضمنه كميه العلاج الضروريه في حال حدوث اغماء لاقدر الله 3- قبل البدء بالطواف والسعي يجب أخذ وجبه خفيفه وشرب الماء وحمل قطع سكر صغيره في حال حدوث انخفاض. يفضل قياس نسبه السكر قبل الطواف وبين الأشواط لتجنب حدوث انخفاض 4- مريض السكر معرض لضربات الشمس فيجب استخدام شمسيه واقيه والحرص على شرب سوائل كافيه والبعد عن الزحام حتى لو تطلب الأمر التأخير لليوم الاخر . الأزدحام يبب الإرهاق للمريض ويعرضه للإلتهابات الفيروسيه',

    ),
    Element(
      title: 'السكري وشهر الصوم',
      imageUrl: 'assets/images/6-5.png',
      explanation:   'يستطيع الكثير من مرضى السكري المعتمدين على الأنسولين في علاجهم صوم شهر رمضان شريطه ما يلي: - أن تكون الحاله الصحيه للمريض مستقره قبل شهر الصوم وأن يكون الشخص قادرا على التحكم بمستوى السكر في دمه وجعله قريب من الحدود الطبيعيه - أن لا يعاني المريض من تكرار انخفاض السكر أو الحامض الكيتوني أثناء الصيام - إستشاره الطبيب قبل دخول الشهر الكريم عن كميه الجرعات المناسبة - يحدد الطبيب نوع الانسولين وكميه الغذاء بناءا على حاله المريض الصحيه - يفضل انقاص الانسولين في السحور لمنع حدوث انخفاض السكر اثناء الصيام - يفضل عمل تحليل السكر في فتره الصيام،قبل اذان المغرب وفي منتصف الليل قبل السحور وعند الاستقياظ من النوم في اليوم التالي وذلك لضبط جرعات الانسولين - تناول كميات كافيه من السائل عند السحور وعدم الاستمرار في الصيام في حاله حدوث هبوط - يأخذ المريض عند الفطور في رمضان نفس جرعه الانسولين الصافي العكر المأخوذه في الايام العاديه وقت الإفطار أما وقت السحوريأخذ جرعه من الأنسولين الصافي وثلثي الأنسولين العكر من جرعه المساء المستخدمه قبل رمضان ',

    ),

  Element(
  title: 'نموذج من الرساله الموجهه إلى إداره المدرسه حول حاله الطفل المصاب بداء السكري',
  imageUrl: 'assets/images/form.jpg',
explanation: ''
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
                      image: "assets/images/1-4.png",
                    ),
                  ),
                  Divider(thickness: 3,),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(vertical: 16 / 2),
                    child: Text(
                      'السكري والحالات الخاصة',
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
                            ),),
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
            //     ': السكري والمدرسة',
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
            //     'ما الذي يجب عمله للأطفال المصابين بالسكر قبل ذهابهم إلى المدرسه في بدايه عامهم الجديد؟ 1- يجب على أهل الطفل أعلام اداره المدرسه بأن طفلهم مصاب بمرض السكري ويأخذ علاج الأنسولين مرتين في اليوم على الأقل 2- يجب على الطبيب المعالج إرسال تقرير طبي عن الطفل المصاب بداء السكري يشرح فيه حاله الطفل الصحية وطريقة علاجه 3- يرجى من الطبيب المعالج أن يذكر في تقريره النقاط التالية: - نرجو من المعلم السماح للطفل بأكل وجبات خفيفه أو شرب عصيرات خلال فتره الحصه الدراسيه داخل الفصل وعدم انتظار نهايه الوقت منعا لحدوث التشنجات والإغماء لاقدر الله - يفضل تسجيل الطفل بمدرسه قريبه من المستشفى إحتسابا للطوارئ - نرجو من معلم اللياقه البدنيه التأكد من أن الطفل أخذ حصته الغذائيه المناسبة قبل البدء في اي نشاط بدني - يفضل من معلم الطفل زياره عياده والتثقيف أكثر عن مرض السكري ',
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
            //     ' نموذج من الرساله الموجهه إلى إداره المدرسه حول حاله الطفل المصاب بداء السكري ',
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
            // Image.asset("assets/images/form.jpg"),
            //
            // Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: Text(
            //     ' :السكر خلال السفر والعطلات ',
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
            //     'لا يوجد مانع من سفر الطفل المصاب بداء السكري في أي من الرحلات البريه والجوية والبحرية ويجب التأكد مما يلي: 1- خطاب من الطبيب المعالج يشرح فيه حالة الطفل الصحية وطريقه العلاج وجرعات الأنسولين 2- أخذ كميات مناسبه من الأنسولين وحفظها في مكان بارد ويفضل أخذ كميات أكبر في حال تلف واحده من العبوات توجد أخرى بديله 3- أخذ الكافي من الأبر وشرائط فحص الدم مع جهاز التحليل اليومي وذلك من أجل فحص سكر الدم خلال فتره السفر 4- أخذ قطع حلوى وعصير إحتياطا في حاله هبوط السكر 5- أخذ حقنه الجلوكاجون في حاله الهبوط الحاد او التشنج او الاغماء لاقدر الله 6- خطاب من الطبيب المعالج إلى مصلحة الجمارك موضحا سبب حمل ما تم ذكره سابقا ويفضل معرفه رقم الفاكس او الجوال للطبيب للاستفسارات خلال السفر 7- في حالات الرحلات الطويله خارج الحدود ونظرا لتغير الوقت بين بلد الاقلاع والوصول يفضل وضع خطه جديده مع الطبيب المعالج لأوقات اعطاء الأنسولين والوجبات الغذائيه ',
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
            //     ' داء السكري خلال سنوات البلوغ والمراهقة والشباب',
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
            //     'تعتبر فتره المراهقه من أهم وأصعب الفترات بالنسبه للشخص المصاب بالسكري وعائلته.هذه الفتره هي فترة انتقاليه ما بين مرحلة الطفولة والنضج ويصحبها عادة تغيرات فسيولوجيه ونفسيه واجتماعيه وذلك ناتج عن إفراز الهرمونات الجنسية عند كل من الذكور والإناث في هذه المرحله يتطلع الشاب أو الشابه إلى إيجاد ذاتيه مستقله ويصحبها صعوبه الاستماع للأهل أو الطبيب المعالج،ترك النصائح الغذائيه ورفض عمل التحاليل اليومية والإلتزام بجرعات الأنسولين. كل ذلك يؤدي إلى عدم السيطره على سكر الدم ومن ثم حدوث مضاعفات لاسمح الله وهنا بعض الخطوات والمعلومات الهامة لطريقه التعامل مع المراهقين: 1- يجب على الفريق الطبي المعالج إعادة التثقيف الصحي لمريض السكر الشاب أو الشابة مرة أخرى حيث أن التثقيف الصحي عند تشخيص المرض (عندما كان الشاب أو الشابة أطفال) كان مركزا على تثقيف من يعولهم ويرعاهم. أما في هذه المرحلة فهم قادرون على رعاية أنفسهم 2- يجب النقاش المفتوح العلمي الموضوعي معهم وعدم تخويفهم بالمضاعفات  لأن هذا الأسلوب قد يكون له رد فعل معاكس في هذه الفتره الحساسة من العمر 3-الإقناع بالأسلوب الحسن هو الطريق الوخيد الذي يجب إتباعه في هذه المرحلة 4- النصح حول المهن غير الممكنه لهم كخدمات الجيش،الشرطه،طيار جوي أو سائق عمومي 5- تزيد حاجه المراهق لجرعات الأنسولين نظرا للتغيرات الفسيولوجيه 6- بعض الفتيات قد ترتفع نسبة السكر لديهم خلال الدورة الشهريه وذلك لزياده الهرمونات المفرزه في تلك الفترة ',
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
            //     ' الرياضة وداء السكري',
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
            //     'لرياضة أهمية كبرى لمرضى داء السكري، والرياضة تساعد على احتراق السكر في الدم وبالتالي تخفيض نسبته وتقليل احتياجات الطفل من الإنسولين بالإضافة إلى تخفيض نسبة الكوليسترول في الدم وكل هذه الأشياء تساعد على تقليل مضاعفات السكر في المستقبل وتسهل عملية عالج مرضى داء السكري كأمراض القلب والسمنة نقاط هامة : -يجب أن تكون الرياضة منتظمة ويحبذ أن تكون يوميا لمده لا تقل عن نصف ساعه كركوب الدراجه،المشي والسباحه - أعراض الهبوط قد تظهر بعد ساعات من انتهاء التمرين الرياضي - يجب قياس نسبه سكر الدم قبل القيام بالعمل الرياضي - يجب تناول وأخذ قطعه من الحلوى احتياطا قبل اي نشاط رياضي - اشتراك الاباء وافراد العائله يشجع الطفل على ممارسه الرياضه - في الحالات التي يود فيها الطفل ممارسه رياضه شاقه، يفضل خفض نسبه جرعه الانسولين الصافي في ذلك اليوم - الأنسولين هو العلاج الأول مصحوبا بالحميه ومن ثم الحركه والرياضة - في وقت السباحه، يفضل تواجد أشخاص يجيدون السباحه بالقرب من الطفل بالمسبح ' ,
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
            //     ' السكري وشهر الصوم',
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
            //     'يستطيع الكثير من مرضى السكري المعتمدين على الأنسولين في علاجهم صوم شهر رمضان شريطه ما يلي: - أن تكون الحاله الصحيه للمريض مستقره قبل شهر الصوم وأن يكون الشخص قادرا على التحكم بمستوى السكر في دمه وجعله قريب من الحدود الطبيعيه - أن لا يعاني المريض من تكرار انخفاض السكر أو الحامض الكيتوني أثناء الصيام - إستشاره الطبيب قبل دخول الشهر الكريم عن كميه الجرعات المناسبة - يحدد الطبيب نوع الانسولين وكميه الغذاء بناءا على حاله المريض الصحيه - يفضل انقاص الانسولين في السحور لمنع حدوث انخفاض السكر اثناء الصيام - يفضل عمل تحليل السكر في فتره الصيام،قبل اذان المغرب وفي منتصف الليل قبل السحور وعند الاستقياظ من النوم في اليوم التالي وذلك لضبط جرعات الانسولين - تناول كميات كافيه من السائل عند السحور وعدم الاستمرار في الصيام في حاله حدوث هبوط - يأخذ المريض عند الفطور في رمضان نفس جرعه الانسولين الصافي العكر المأخوذه في الايام العاديه وقت الإفطار أما وقت السحوريأخذ جرعه من الأنسولين الصافي وثلثي الأنسولين العكر من جرعه المساء المستخدمه قبل رمضان ',
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
            //     ' الحج وداء السكري',
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
            //     'السكري هو داء مزمن وينبغي التعايش معه في جميع الأحول والظروف ولأن الحج هو الركن الخامس من أركان الإسلام وهو فرض على كل بالغ عاقل قادر على أداء الفريضة ، سنوضح أدناه أهم الإرشادات لمرضى السكري قبل أداء فريضه الحج وأثناء أدائها حرصا على سلامتهم ,الإستعدادات اللازمه قبل أداء فريضه الحج: 1- ينبغي على الطفل المصاب بالسكري التوجه إلى أخصائيه التغذيه العلاجيه والطبيب المعالج لرسم خطه واضحه لأداء الحج والتثقيف المناسب للحاله -2- لابد من تجهيز حقيبه السكري المتضمنه لما يلي: - بطاقه تفيد بأنه مصاب بالسكري - كميه كافية من علاج الأنسولين مع مسحات طبيه وإبر حقن - جهاز قياس السكر لحاجه المريض لقياس السكر عده مرات اثناء أداء الحج - بعض قوالب السكر وإبره الجلوكاجون في حاله الإنخفاض الحاد - نظاره شمسيه لضربات الشمس الحاره - التزود بكميات كبيره بالماء لأن الجفاف يؤثر سلبا على مصاب السكري - أخذ التطعميات الضروريه كالأنفلونزا والحمى الشوكيه ',
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
            //     ': أثناء أداء فريضه الحج ',
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
            //     '1- لابد من أداء الفريضه مع شخص اخر ذو خبره جيده عن داء السكري وتكون لديه معرفه بحالات ارتفاع وانخفاض السكري وكيفيه استخدام جهاز السكري الموجود في الحقيبة 2- الحرص على لبس حذاء واسع ومريح للقدم قبل الإحرام وأخذ بطاقه تعريفيه بأنه مصاب بالسكري متضمنه كميه العلاج الضروريه في حال حدوث اغماء لاقدر الله 3- قبل البدء بالطواف والسعي يجب أخذ وجبه خفيفه وشرب الماء وحمل قطع سكر صغيره في حال حدوث انخفاض. يفضل قياس نسبه السكر قبل الطواف وبين الأشواط لتجنب حدوث انخفاض 4- مريض السكر معرض لضربات الشمس فيجب استخدام شمسيه واقيه والحرص على شرب سوائل كافيه والبعد عن الزحام حتى لو تطلب الأمر التأخير لليوم الاخر . الأزدحام يبب الإرهاق للمريض ويعرضه للإلتهابات الفيروسيه',
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
