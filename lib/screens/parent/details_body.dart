import 'package:asoul/consts/theme_data.dart';
import 'package:flutter/material.dart';

import '../../model/tipes_model.dart';
import '../../widgets/deatils_product.dart';

class DetalisBody extends StatelessWidget {
  final Tips product;

  const DetalisBody({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(


            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(

              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: productimage(
                    size: size,
                    image: product.image,
                  ),
                ),
              Divider(thickness: 3,),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 16 / 2),
                  child: Text(
                    product.title,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ElMessiri',
                      color: second,
                    ),
                  ),
                ),

              ],
            ),
          ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        '${product.h1} ',
        textAlign: TextAlign.right,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
          fontFamily: 'ElMessiri',
          color: Colors.blueAccent,

        ),
      ),
    ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              '${product.s1} ',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'ElMessiri',
                color: Colors.black.withOpacity(0.6),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              '${product.h2} ',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'ElMessiri',
                color: Colors.blueAccent,

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              '${product.s2} ',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'ElMessiri',
                color: Colors.black.withOpacity(0.6),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              '${product.h3} ',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'ElMessiri',
                color: Colors.blueAccent,

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              '${product.s3} ',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'ElMessiri',
                color: Colors.black.withOpacity(0.6),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              '${product.h4} ',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'ElMessiri',
                color: Colors.blueAccent,

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              '${product.s4} ',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'ElMessiri',
                color: Colors.black.withOpacity(0.6),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              '${product.h5} ',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'ElMessiri',
                color: Colors.blueAccent,

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              '${product.s5} ',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'ElMessiri',
                color: Colors.black.withOpacity(0.6),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              '${product.h6} ',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'ElMessiri',
                color: Colors.blueAccent,

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              '${product.s6} ',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'ElMessiri',
                color: Colors.black.withOpacity(0.6),

              ),
            ),
          ),
        ],
      ),
    );
  }
}
