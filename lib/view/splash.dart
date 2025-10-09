// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/splash_controller.dart';

class Splash extends StatelessWidget {
   Splash({Key? key}) : super(key: key);
SplashController splashController = Get.find() ;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Icon(Icons.wordpress_rounded , size: 120,) ,
              SizedBox(
              height: 20,
            ) ,
            Text("Word App",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600)) ,
          ],
        ),
      ),
    ) ;
  }
}
