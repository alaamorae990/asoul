import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../consts/firebase_consts.dart';
import '../../consts/theme_data.dart';
import '../../fetch_screen.dart';
import '../../widgets/text_widget.dart';
class ChooseActor extends StatelessWidget {
  const ChooseActor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Stack(

        children:  <Widget>[
          Image.asset('assets/images/01.png'),
          Center(child: Image.asset('assets/images/4.png')),

          Padding(
            padding: const EdgeInsets.fromLTRB(60,250,0,0),
            child: Image.asset('assets/images/06.png'),
          ),


          Container(
            color: Colors.white.withOpacity(0.3),
          ),
          SingleChildScrollView(
            child:  Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextWidget(
                    text: "اهلا وسهلا صديقي ",
                    color: second,
                    textSize: 18,
                    isTitle: true,
                  ),
                  TextWidget(
                    text: "اختر احد  الشخصيات للمتابعة",
                    color: second,
                    textSize: 18,
                    isTitle: false,
                  ),
              SizedBox(height: 60,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: minHandStatColor,
                    ),

                    child: GestureDetector(
                      //asoula is 2
                      onTap: () async {
                        String actor="2";
                        final User? user = authInstance.currentUser;
                        final uid = user!.uid;
                        await FirebaseFirestore.instance.collection('users').doc(uid).update({
                          'actor': actor,
                        });
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const FetchScreen(),
                        ));
                      },
                      child: Container(
                        height:  MediaQuery.of(context).size.width * 0.40,
                        width:  MediaQuery.of(context).size.width * 0.40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Image.asset("assets/images/15.png",fit:BoxFit.fitHeight ),
                        ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: minHandStatColor,
                    ),
                    child: GestureDetector(
                      onTap: () async {
                        //asoul is 1
                        String actor="1";
                        final User? user = authInstance.currentUser;
                        final uid = user!.uid;
                        await FirebaseFirestore.instance.collection('users').doc(uid).update({
                          'actor': actor,
                        });
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const FetchScreen(),
                        ));
                      },
                      child: Container(
                        height:  MediaQuery.of(context).size.width * 0.40,
                        width:  MediaQuery.of(context).size.width * 0.40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Image.asset("assets/images/14.png",fit:BoxFit.fitHeight ),
                      ),
                    ),
                  ),

                  ],
              ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                    TextWidget(
                      text: "عسولة",
                      color: second,
                      textSize: 18,
                      isTitle: true,
                    ),
                    TextWidget(
                      text: "عسول",
                      color: second,
                      textSize: 18,
                      isTitle: true,
                    ),
                  ],)
                ],
              ),
            ),
          )




        ],
      ),
    );
  }
}
