import 'package:flutter/material.dart';

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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Element> elements = [
    Element(
      title: 'Element 1',
      imageUrl: 'assets/images/1-1.png',
      explanation: 'This is an explanation for element 1',
    ),
    Element(
      title: 'Element 2',
      imageUrl: 'assets/images/1-1.png',
      explanation: 'This is an explanation for element 2',
    ),
    Element(
      title: 'Element 3',
      imageUrl: 'assets/images/1-1.png',
      explanation: 'This is an explanation for element 3',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Elements'),
      ),
      body: ListView.builder(
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
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Text(elements[index].title),
                    SizedBox(height: 8.0),
                    Image.asset(elements[index].imageUrl),
                    SizedBox(height: 8.0),
                    Text(elements[index].explanation),
                  ],
                ),
              ),
            ),
          );
        },
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
        title: Text(element.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.network(element.imageUrl),
            SizedBox(height: 8.0),
            Text(element.explanation),
          ],
        ),
      ),
    );
  }
}
