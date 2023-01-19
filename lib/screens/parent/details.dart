import 'package:asoul/consts/theme_data.dart';
import 'package:flutter/material.dart';

import '../../model/tipes_model.dart';
import 'details_body.dart';


class DetailScreen extends StatelessWidget {
  final Tips tips;

  const DetailScreen({Key? key, required this.tips}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: detialsAppBar(context),
      body: SingleChildScrollView(
        child: DetalisBody(
          product: tips,
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
