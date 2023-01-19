import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../consts/theme_data.dart';
import '../../services/global_methods.dart';
import '../../widgets/auth_button.dart';
import '../../widgets/lodaing_manger.dart';
import '../../widgets/text_widget.dart';
class WebSiteScreenParent extends StatefulWidget {
  const WebSiteScreenParent({Key? key}) : super(key: key);

  @override
  State<WebSiteScreenParent> createState() => _WebSiteScreenParentState();
}

class _WebSiteScreenParentState extends State<WebSiteScreenParent> {
  final _formKey = GlobalKey<FormState>();
  final _sexController = TextEditingController();
  late double result=0.0;
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
  bool _isLoading = false;
  double _submitFormOnLogin()  {
    var total;
    final isValid = _formKey.currentState!.validate();
    FocusScope.of(context).unfocus();

    if (isValid) {
      _formKey.currentState!.save();
      setState(() {
        _isLoading = true;
      });

      try {
     if (dropdownvalue == "ذكر"){
     total= (10*double.parse(_weightController.text))+(6.25*double.parse(_heightController.text))
     -(5*double.parse(_ageController.text))+5;
     } else total=(10*double.parse(_weightController.text))+(6.25*double.parse(_heightController.text))
         -(5*double.parse(_ageController.text))- 161;
      }  catch (error) {
        GlobalMethods.errorDialog(subtitle: '$error', context: context);
        setState(() {
          _isLoading = false;
        });
      } finally {
        setState(() {
          _isLoading = false;
        });
      }

    }
    return total;
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: second2,

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
body: LoadingManager(
  isLoading: _isLoading,
  child: Stack(children: [
    // Center(child: Image.asset('assets/images/website2.png')),

    Container(
      color: primary.withOpacity(0.6),
    ),
    SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisSize: MainAxisSize.max,
          children: [
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextWidget(text: "حاسبة السعرات الحرارية", color: Colors.white, textSize: 18,isTitle: true,),
                  Divider(thickness: 3,color: Colors.white,),
                  TextWidget(text: "الجنس", color: Colors.white, textSize: 18),
                DropdownButton(
                value: dropdownvalue,
                icon: const Icon(Icons.keyboard_arrow_down),
                style: TextStyle(color: Colors.black,fontFamily: 'ElMessiri'),
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
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      hintText: 'الوزن',
                      hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontFamily: 'ElMessiri'),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
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
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      hintText: 'الطول',
                      hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontFamily: 'ElMessiri'),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
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
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      hintText: 'العمر',
                      hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontFamily: 'ElMessiri'),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
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
               result= _submitFormOnLogin()  ;
              },
            ),
            SizedBox(height: 10,),
            TextWidget(text:'${result}  :الناتج' , color: Colors.black, textSize: 18,isTitle: true,),
            SizedBox(height: 10,),
            TextWidget(text:'ملاحظه في حاله زياده النشاط يضاف مابين ٣٠٠ -٣٥٠ سعره حراريه ' , color: second2, textSize: 20,isTitle: true,),
            Divider(thickness: 3,color: Colors.white,),
            TextWidget(text: 'مواقع مفيدة تخدم مرضى داء السكري  ',isTitle: true, color: Colors.black, textSize: 20),
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
                                "قلم الأنسولين",
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

                                  "طريقة الأستخدام",
                                  maxLines: 3,
                                  textAlign: TextAlign.end,

                                  style: TextStyle(color: second,fontWeight: FontWeight.w300,fontFamily: 'ElMessiri',),
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
            Divider(thickness: 3,color: Colors.white,),
            Align(
              alignment: Alignment.topCenter,
              child: Column(

                children: [
                  ElevatedButton(

                    onPressed: (){
                      launchUrl(Uri.parse("https://www.diabetes.org"));
                    },
                    style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(second2),),
                    child:  Text('www.diabetes.org '),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      launchUrl(Uri.parse("https://www.aadenet.org"));
                    },
                    style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(second2),),
                    child:  Text('www.aadenet.org '),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      launchUrl(Uri.parse("https://www.diabetes.ca"));
                    },
                    style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(second2),),
                    child:  Text('www.diabetes.ca'),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      launchUrl(Uri.parse("https://www.dav.org.au"));
                    },
                    style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(second2),),
                    child:  Text('www.dav.org.au'),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      launchUrl(Uri.parse("https://www.intelhealth.com "));
                    },
                    style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(second2),),
                    child:  Text('www.intelhealth.com  '),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      launchUrl(Uri.parse("https://www.joslin.harvard.edu"));
                    },
                    style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(second2),),
                    child:  Text('www.joslin.harvard.edu'),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      launchUrl(Uri.parse("https://www.moh.gov.sa"));
                    },
                    style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(second2),),
                    child:  Text('www.moh.gov.sa '),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      launchUrl(Uri.parse("https://www.medicarlet.org"));
                    },
                    style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(second2),),
                    child:  Text('www.medicarlet.org '),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    )
  ]),
),
    );
  }
//   Function calculateCalories(weight: Double, height: Double, age: Int, sex: String) -> Double {
//   let weightInKg = weight / 2.205
//   let heightInM = height / 39.37
//   var BMR = 0.0
//
//   if sex == "male" {
//   BMR = 88.362 + (13.397 * weightInKg) + (4.799 * heightInM) - (5.677 * Double(age))
//   } else if sex == "female" {
//   BMR = 447.593 + (9.247 * weightInKg) + (3.098 * heightInM) - (4.330 * Double(age))
//   }
//   return BMR
// }
}
