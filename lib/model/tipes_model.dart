class Tips {
  final int id;
  final String title, subTitle, description, image;
final String h1,s1,h2,s2,h3,s3,h4,s4,s5,h5,s6,h6;
  Tips(
      {required this.id,
        required this.h1,
        required this.s1,
        required this.h2,
        required this.s2,
        required this.h3,
        required this.s3,
        required this.h4,
        required this.s4,
        required this.s5,
        required this.h5,
        required this.s6,
        required this.h6,
        required this.title,
        required this.subTitle,
        required this.description,
        required this.image});
}

// list of products
List<Tips> products = [
  Tips(
    id: 1,
    title: "البنكرياس و الأنسولين وداء السكري",
    h1: ":غده البنكرياس ",
    s1: " هي غده هضميه هرمونيه يتراوح وزنها ما بين 80 الى 90 جراما وتقع في البطن خلف المعدة و تحتوي على غدد غير صماء تفرز عصاره البنكرياس في الاثنى عشر والتي تحتوي على إنزيمات لهضم الطعام .كذلك تحتوي على غدد صماء أخرى تعرف ب (جزر لانرهانز) التي تحتوي على خلايا عديده مثل خلايا بيتا وهي المسؤله عن إفراز الأنسولين بينما خلايا ألفا تفرز هرمون الجلوكاجون و كلاهما يعملان على تنظيم نسبه السكر عند المعدل الطبيعي. ",
    h2: ' خلايا بيتا ودورها في المحافظه على نسبه السكر بالدم ',
    s2: "تتراوح نسبه السكر في دم الإنسان الطبيعي من 60 إلى 110 مليجرام/ 100 ملل من بلازما الدم وعند زياده هذه النسبه في الدم تفرز خلايا بيتا هرمون الأنسولين الذي يحول السكر في دم الإنسان إلى مادة نشويه غير ذائبه تترسب في الكبد والعضلات تسمى بمادة الجليكوجين. ما أن تترسب هذه المادة حتى تعود نسبة السكر في الدم إلى معدلها الطبيعي. أما إذا أنخفضت نسبة السكر عن المعدلات الطبيعية فيفرز البنكرياس هرمون الجلوكاجون والذي يؤدي إلى عمليه تصنيع الجلوكوز من خلايا الكبد وتحويل مركب الجليكوجين إلى جلوكوز مما يؤدي إلى توازن نسبة السكر في الدم. ",
    h3: 'ما هو داء السكري ؟',
    s3: 'هو نقص أو عدم وجود هرمون الإنسولين  الضروري لتمكين الجسم من حرق الجلوكوز من أجل الحصول على الطاقة الضرورية لإتمام  التفاعلات الحيوية المهمه لخلايا الجسم البشري من المفيد أن نعرف أن سكر الدم ( الجلكوز) يعتبر مصدر الطاقةالرئيسي لكافة التفاعلات الحيويه المهمة لاستقرار خلايا الجسم في الحياة وتأديه الوظائف المطلوبه منها والتي تشكل في مجموعها عمل الجسم ككل من جهد عقلي وعضلي.',
    h4: ':كيفيه تشخيص داء السكري ',
    s4: 'لداء السكري علامات واضحة يمكن حصرها في :1- كثرة العطش- كثرة شرب الماء - زيادة التبول وفقدان الوزن 2- إرتفاع معدل السكر في الدم عن 126 ملجم\100 ملل من بلازما الدم ( 7 ميليمول للتر الواحد في حالة الصيام)3- ارتفاع معدل نسبه السكر التراكمي عن 6.5   -4  عند اجراء قياسات السكر في الدم، تكون نتائج قياسات السكر العشوائيه (بعد ساعتين من تناول الطعام) في الدم 200 ملجم أو أكثر لكل 100 ملل من بلازما الدم',
    h5: 'ماهو سبب داء السكري؟ ',
    s5: 'داء السكري ينتج عن خلل في قدره تمثيل الجسم للمواد السكرية مثل سكر المائدة والحلوى والمواد النشوية كالبطاطس والخبز للحصول على طاقة وذلك بسبب نقص أو عدم وجود هرمون الإنسولين. بعدما تتحول هذه المواد داخل الجسم إلى سكريات بسيطه ومن أهمها الجلوكوز ، لاتستيع خلايا الجسم حرق هذا الجلوكوز للحصول على طاقة وبالتالي يرتفع نسبة الجلوكوز بالدم',
    h6: 'ماهو سبب هذا الخلل؟',
    s6: 'تحطم خلايا بيتا (الموجودة بالبنكرياس والمساعده على تنظيم السكر في الدم )نتيجة وجود أجسام مناعية مضادة لها يؤدي إلى النوع الأول من داء السكري الكامن في نقص أو عدم وجود هرمون الأنسولين لحرق السكر والحصول على طاقة',
      subTitle: '',
      image: "assets/images/1-1.png",
    description:
      ""
  ),
];
//   Tips(
//     id: 2,
//
//     title: "الغذاء وداء السكري",
//     h1:'كيف تتم عمليه هضم الطعام وإفراز الأنسولين لدى الطفل السليم (الغير مصاب بداء السكري):' ,
//     s1: 'عندما يأكل الطفل الطعام تذهب جميع مكوناته من مواد نشويه ودهنيه وبروتينيه إلى المعده ومن ثم إلى الأمعاء الدقيقه حيث هنالك يتم هضم الطعام بواسطه الأحماض الموجوده في المعده وكذلك بإفراز الإنزيمات الخاصه لهضم الطعام في الأمعاء الدقيقه عملية الهضم هذه تحول جميع المكونات السابقه إلى سكر بسيط يسمى الجلوكوز الذي يمتص من الأمعاء الدقيقه ويذهب للدم ، يقوم الدم بعد ذلك بتوزيع الجلوكوز إلى جميع خلايا الجسم لتوليد الطاقة الناتجة عن إحتراق الجلوكوز داخل الخلايا بواسطة هرمون الأنسولين',
//     h2: 'ماهو دور الأنسولين داخل خلايا الجسم فيما سبق ذكره؟',
//     s2: '1-يعمل كمفتاح للخلية من أجل السماح لسكر الجلوكوز العبور داخل خلايا الجسم المختلفه 2-بعد السماح لسكر الجلوكوز العبور داخل خلايا الجسم يحترق هذا السكر بواسطة الإنسولين لإنتاج الطاقة الحرارية اللازمة لعمل كل خلية من خلايا الجسم المختلفة 3-الفائض من سكر الجلوكوز يتحول إلى مادة الجليوكوجين والتي يتم تخزينها في الكبد ليتم استخدامها عند فترات الصيام أو أوقات الأكل المحدود ',
//     h3:'الغذاء الصحي لمرضى داء السكري:' ,
//     s3:' للوصول لغذاء صحي متوازن  لأطفال داء السكري:- تقليل تناول الأطعمه ذات السكر العالي أو الدهون المشبعه من أصل حيواني والحصول على تغذيه متوازنه من جميع العناصر الغذائيه - الحرص على المتابعة مع أخصائية تغذيه علاجيه والحرص على تعاون الأهل مع الطفل عن طريق التزامهم بالغذاء الصحي كي لا يشعر الطفل بالوحدة والنبذ ومن ثم عنادهم - يجب ان يحتوي غذاء طفل السكري على جميع العناصر الغذائية، ولكن بكميات محدده - تعتمد الوجبات الغذائية الرئيسية على ما تقدره أخصائية التغذية نظرا لطول، عمر،وزن المريض وتختلف الخطة الغذائية من شخص لأخر' ,
//     h4: 'الهرم الغذائي:',
//     s4: 'assets/images/alhram.png',
//     h5:'' ,
//     s5: '',
//     h6: '',
//     s6: '',
//     subTitle: "",
//       image: "assets/images/logo.png",
//     description:
//    ""
//     ),
//   Tips(
//     id: 3,
//       h1:'' ,
//       s1: '',
//       h2: '',
//       s2: '',
//       h3:'' ,
//       s3:'' ,
//       h4: '',
//       s4: '',
//       h5:'' ,
//       s5: '',
//       h6: '',
//       s6: '',
//     title: "",
//     subTitle: "",
//       image: "assets/images/logo.png",
//     description:""
//    ),
//   Tips(
//     id: 4,
//
//     title: "",
//     subTitle: "",
//       image: "assets/images/logo.png",
//     description:""
//    ),
//   Tips(
//       id: 5,
//
//       title: "الغذاء الصحي لمرضى داء السكري",
//       subTitle: "تقليل تناول الأطعمه ذات السكر العالي أو الدهون المشبعه من أصل حيواني والحصول على تغذيه متوازنه من جميع العناصر الغذائيه",
//       image: "assets/images/logo.png",
//       description:
//       "سس"
//   ),
// ];