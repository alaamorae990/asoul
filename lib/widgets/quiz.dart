import 'package:asoul/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  final String image1;
  final String title1;
  final String image2;
  final String title2;
  final String correctImage;

  Question({required this.image1,required this.title1, required this.image2,required this.title2, required this.correctImage});

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  String selectedImage='';
  void _showWrongDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("إجابة خاطئة",
            textAlign: TextAlign.right,
            style: TextStyle(

              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'ElMessiri',
              color: Colors.black,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset('assets/images/sad.png'),
            ],
          ),
          // content: const Text("",
          //   textAlign: TextAlign.right,
          //   style: TextStyle(
          //
          //     fontSize: 20.0,
          //     fontWeight: FontWeight.bold,
          //     fontFamily: 'ElMessiri',
          //     color: Colors.black,
          //   ),),
          actions: <Widget>[
            FlatButton(
              child: const Text("حسنا",
                textAlign: TextAlign.right,
                style: TextStyle(

                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ElMessiri',
                  color: Colors.black,
                ),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  void _showCorrectDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("لقد اخترت الإجابة الصحيحة",
            textAlign: TextAlign.right,
            style: TextStyle(

              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'ElMessiri',
              color: Colors.black,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset('assets/images/14.png'),
            ],
          ),
          // content: const Text("",
          //   textAlign: TextAlign.right,
          //   style: TextStyle(
          //
          //     fontSize: 20.0,
          //     fontWeight: FontWeight.bold,
          //     fontFamily: 'ElMessiri',
          //     color: Colors.black,
          //   ),),
          actions: <Widget>[
            FlatButton(
              child: const Text("حسنا",
                textAlign: TextAlign.right,
                style: TextStyle(

                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ElMessiri',
                  color: Colors.black,
                ),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 120,
                      width: double.infinity,
                      color: Colors.white,
                      child: GestureDetector(
                          child: Image.asset(widget.image1),
                      onTap: (){
                        if (widget.image1 == widget.correctImage) {
                          _showCorrectDialog();
                        } else{
                          _showWrongDialog();
                        }
                      },
                      ),
                  ),
                  SizedBox(height: 3,),
                  TextWidget(text: widget.title1, color: Colors.white, textSize: 18,isTitle: true),
                ],
              ),
            ),

            VerticalDivider(thickness: 2,color: Colors.black,),
            Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                      height: 120,
                    width: double.infinity,
                      color: Colors.white,
                      child: GestureDetector(
                          child: Image.asset(widget.image2,height: 100),
                        onTap: (){
                          if (widget.image2 == widget.correctImage) {
                            _showCorrectDialog();
                          }
                          else{
                            _showWrongDialog();
                          }
                        },
                        ),
                    ),

                  SizedBox(height: 3,),
                  TextWidget(text: widget.title2, color: Colors.white, textSize: 18,isTitle: true,),
                ],
              ),
            ),

          ],
        ),
        // selectedImage == widget.correctImage
        //     ? Image.asset(widget.correctImage)
        //     : Container(),
      ],
    );
  }
}
