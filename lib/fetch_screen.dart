import 'package:asoul/screens/child_or_parent.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';



import 'package:provider/provider.dart';

import 'consts/contss.dart';
import 'consts/firebase_consts.dart';
import 'screens/btm_Bar.dart';
import 'screens/user_info.dart';



class FetchScreen extends StatefulWidget {
  const FetchScreen({Key? key}) : super(key: key);

  @override
  State<FetchScreen> createState() => _FetchScreenState();
}

class _FetchScreenState extends State<FetchScreen> {
  List<String> images = Constss.authImagesPaths;
    // final _fullNameController = TextEditingController();
    // void dispose(){
    //       _fullNameController.dispose();
    // }
  @override
  void initState() {
    images.shuffle();
    Future.delayed(const Duration(microseconds: 5), () async {
      // final productsProvider =
      //     Provider.of<ProductsProvider>(context, listen: false);
          // final resProvider =
          // Provider.of<ProductsProvider>(context, listen: false);
      // final cartProvider = Provider.of<CartProvider>(context, listen: false);
      // final wishlistProvider =
      //     Provider.of<WishlistProvider>(context, listen: false);
      //           final orderProvider =
      //     Provider.of<OrdersProvider>(context, listen: false);
      // final User? user = authInstance.currentUser;
      if (authInstance.currentUser == null) {

        Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (ctx) => const ChildOrParent(),
      ));

        
      } else {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (ctx) => const BottomBarScreen(),
        ));

      }

      // Navigator.of(context).pushReplacement(MaterialPageRoute(
      //   builder: (ctx) => const BottomBarScreen(),
      // ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            images[0],
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          Container(
            color: Colors.black.withOpacity(0.7),
          ),
          const Center(
            child: SpinKitFadingFour(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
