import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:intl/intl.dart';

import '../../../consts/firebase_consts.dart';
import '../../../consts/theme_data.dart';
import '../../../services/global_methods.dart';
import 'clockview.dart';

class ClockPage extends StatefulWidget {
  @override
  _ClockPageState createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();

    var formattedDate = DateFormat('EEE, d MMM').format(now);
    var timezoneString = now.timeZoneOffset.toString().split('.').first;
    var offsetSign = '';
    if (!timezoneString.startsWith('-')) offsetSign = '+';

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 64),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Text(
              'الساعة',
              style: TextStyle(
                  fontFamily: 'avenir', fontWeight: FontWeight.w700, color: primaryTextColor, fontSize: 24),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              DigitalClockWidget(),
              Text(
                formattedDate,
                style: TextStyle(
                    fontFamily: 'avenir', fontWeight: FontWeight.w300, color: primaryTextColor, fontSize: 20),
              ),
            ],
          ),
          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Align(
              alignment: Alignment.center,
              child: ClockView(
                size: MediaQuery.of(context).size.height / 4,
              ),
            ),
          ),

          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 70, 0),
                  child: TextButton(
                    child: Text(
                      'هل اخدت الجرعة؟',
                      style: TextStyle(
                          fontFamily: 'avenir', fontWeight: FontWeight.bold, color: Colors.white, fontSize: 24),
                    ),
              style:ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(menuBackgroundColor)),
                    onPressed: ()async{
                      try {
                        bool istake=true;
                        final User? user = authInstance.currentUser;
                        final uid = user!.uid;
                        FirebaseFirestore.instance.collection('users').doc(uid).update({
                          'userCart': FieldValue.arrayUnion([
                            {
                              'takeTime': Timestamp.now(),
                              'isTake': istake ,
                            }
                          ])
                        });
                        await Fluttertoast.showToast(
                          msg: "رائع , شكرا لك",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                        );
                      } on FirebaseException catch (error) {
                        GlobalMethods.errorDialog(
                            subtitle: '${error.message}', context: context);

                      } catch (error) {
                        GlobalMethods.errorDialog(subtitle: '$error', context: context);

                      }
                    },
                  ),
                ),

                // Row(
                //   children: <Widget>[
                //     Icon(
                //       Icons.language,
                //       color: primaryTextColor,
                //     ),
                //     SizedBox(width: 16),
                //     Text(
                //       'UTC' + offsetSign + timezoneString,
                //       style: TextStyle(fontFamily: 'avenir', color: primaryTextColor, fontSize: 14),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DigitalClockWidget extends StatefulWidget {
  const DigitalClockWidget({
    Key? key,
  }) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return DigitalClockWidgetState();
  }
}

class DigitalClockWidgetState extends State<DigitalClockWidget> {
  var formattedTime = DateFormat('HH:mm').format(DateTime.now());
  late Timer timer;

  @override
  void initState() {
    this.timer = Timer.periodic(Duration(seconds: 1), (timer) {
      var perviousMinute = DateTime.now().add(Duration(seconds: -1)).minute;
      var currentMinute = DateTime.now().minute;
      if (perviousMinute != currentMinute)
        setState(() {
          formattedTime = DateFormat('HH:mm').format(DateTime.now());
        });
    });
    super.initState();
  }

  @override
  void dispose() {
    this.timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Text(
      formattedTime,
      style: TextStyle(fontFamily: 'avenir', color: primaryTextColor, fontSize: 64),
    );
  }
}
