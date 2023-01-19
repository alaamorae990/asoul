import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  final String image1;
  final String image2;
  final String correctImage;

  Question({required this.image1, required this.image2, required this.correctImage});

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  String selectedImage='';

  void _showCorrectDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Correct!"),
          content: Text("You have selected the correct answer."),
          actions: <Widget>[
            FlatButton(
              child: Text("OK"),
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
                    height: 100,
                      color: Colors.white,
                      child: GestureDetector(
                          child: Image.asset(widget.image1),
                      onTap: (){
                        if (widget.image1 == widget.correctImage) {
                          _showCorrectDialog();
                        }
                      },
                      ),
                  ),

                  // RaisedButton(
                  //   child: Text("اختر"),
                  //   onPressed: () {
                  //     // setState(() {
                  //     //   selectedImage = widget.image1;
                  //     // });
                  //     if (widget.image1 == widget.correctImage) {
                  //       _showCorrectDialog();
                  //     }
                  //   },
                  // ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                      height: 100,
                      color: Colors.white,
                      child: GestureDetector(
                          child: Image.asset(widget.image2,height: 100),
                        onTap: (){
                          if (widget.image2 == widget.correctImage) {
                            _showCorrectDialog();
                          }
                        },
                        ),
                    ),

                  // RaisedButton(
                  //   child: Text("اختر"),
                  //   onPressed: () {
                  //     // setState(() {
                  //     //   selectedImage = ;
                  //     // });
                  //
                  //   },
                  // ),
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
