
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../consts/theme_data.dart';
import '../../model/tipes_model.dart';
import '../../provider/dark_theme_provider.dart';
import '../../services/global_methods.dart';
import '../../widgets/auth_button.dart';
import '../../widgets/card_info.dart';
import '../../widgets/lodaing_manger.dart';
import '../../widgets/text_widget.dart';
import '../parent/categories/cat3_details.dart';
import '../parent/details.dart';

class TipsAndInformation extends StatefulWidget {
  static const routeName = "/TipsAndInformation";
  const TipsAndInformation({Key? key}) : super(key: key);

  @override
  State<TipsAndInformation> createState() => _TipsAndInformationState();
}

class _TipsAndInformationState extends State<TipsAndInformation> {
  final _formKey = GlobalKey<FormState>();
  final _sexController = TextEditingController();
  late double result=0;
  String dropdownvalue = 'ذكر';

  // List of items in our dropdown menu
  var items = [
    'ذكر',
    'انثئ',
  ];
  final _weightController = TextEditingController();
  final _heightController = TextEditingController();
  final _ageController = TextEditingController();
  final _activityController = TextEditingController();
  @override
  void dispose() {
    _sexController.dispose();
    _weightController.dispose();
    _heightController.dispose();
    _ageController.dispose();
    _activityController.dispose();
    super.dispose();
  }
  // bool _isLoading = false;
  double _total()  {
    var total;

        if (dropdownvalue == "ذكر"){
          total= (10*double.parse(_weightController.text))+(6.25*double.parse(_heightController.text))
              -(5*double.parse(_ageController.text))+5;
        } else total=(10*double.parse(_weightController.text))+(6.25*double.parse(_heightController.text))
            -(5*double.parse(_ageController.text))- 161;
    return total;

  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final themeState = Provider.of<DarkThemeProvider>(context);
    final Color color = themeState.getDarkTheme ? Colors.white : Colors.black;
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
    launchUrl(Uri.parse("https://www.youtube.com/watch?v=RfzlviTSZ_s"));
    },
    child: Stack(
    alignment: Alignment.bottomCenter,
    children: [
    Container(
    height: 160.0,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(22),
    color: Colors.white.withOpacity(0.9),
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

    const Padding(
    padding: const EdgeInsets.symmetric(
    horizontal: 5),
    child: Text(
    "حقن الأنسولين",
    style: TextStyle(color: primary,fontFamily: 'ElMessiri',fontWeight: FontWeight.bold),
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
    child: const Text(

    "طريقة الأستخدام للأطفال",
    maxLines: 3,
    textAlign: TextAlign.end,

    style: TextStyle(color: second,fontWeight: FontWeight.w300,fontFamily: 'ElMessiri',),
    ),
    ),
    ),


    ],
    ),
    ),
    ),
    ],
    ),

    ),

    ),
            Container(
              margin: EdgeInsets.only(top: 2.0),
              decoration: BoxDecoration(
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
            Divider(thickness: 3,),
            Form(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextWidget(text: "حاسبة السعرات الحرارية", color: color, textSize: 18,isTitle: true,),
                  Divider(thickness: 3,color: color,),
                  TextWidget(text: "الجنس", color: color, textSize: 18),
                  DropdownButton(
                    value: dropdownvalue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    style: TextStyle(color: color,fontFamily: 'ElMessiri'),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });

                    },
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(

                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    controller: _weightController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "";
                      } else {
                        return null;
                      }
                    },
                    textAlign: TextAlign.end,
                    style:  TextStyle(color: color),
                    decoration:  InputDecoration(
                      hintText: 'الوزن',
                      hintStyle: TextStyle(fontWeight: FontWeight.normal ,color: color,fontFamily: 'ElMessiri'),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: color),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: color),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //Password
                  TextFormField(

                    textInputAction: TextInputAction.next,

                    keyboardType: TextInputType.number,
                    controller: _heightController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "";
                      } else {
                        return null;
                      }
                    },
                    textAlign: TextAlign.end,
                    style:  TextStyle(color: color),
                    decoration:  InputDecoration(
                      hintText: 'الطول',
                      hintStyle: TextStyle(color: color,fontWeight: FontWeight.normal,fontFamily: 'ElMessiri'),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: color),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color:color),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                  TextFormField(

                    textInputAction: TextInputAction.next,

                    keyboardType: TextInputType.number,
                    controller: _ageController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "";
                      } else {
                        return null;
                      }
                    },
                    textAlign: TextAlign.end,
                    style:  TextStyle(color: color),
                    decoration:  InputDecoration(
                      hintText: 'العمر',
                      hintStyle: TextStyle(color: color,fontWeight: FontWeight.normal,fontFamily: 'ElMessiri'),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: color),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: color),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                ],
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            AuthButton(

              buttonText: 'احسب',
              fct: () {
                setState(() {
                  result= _total();
                });
              },
            ),
            SizedBox(height: 10,),
            TextWidget(text:'${result}  :الناتج' , color: color, textSize: 18,isTitle: true,),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextWidget(text:'ملاحظه في حاله زياده النشاط يضاف مابين ٣٠٠ -٣٥٠ سعره حراريه ' , color: second2, textSize: 20,isTitle: true,),
            ),
            Divider(thickness: 3,color: color,),
          ],
        ),
      ),
    );
  }
}
