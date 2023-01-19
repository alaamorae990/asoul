import 'package:flutter/material.dart';

import '../consts/theme_data.dart';


class productimage extends StatelessWidget {
  const productimage({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      height: size.width * 0.5,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.width * 0.6,
            width: size.width * 0.8,
            decoration: BoxDecoration(
              color: primary,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(
            image,
            height: size.width * 0.6,
            width: size.width * 0.8,
            fit: BoxFit.fitHeight,
          ),
        ],
      ),
    );
  }
}
