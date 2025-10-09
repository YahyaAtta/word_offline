import 'package:flutter/material.dart';
import 'package:get/get.dart' ;
import 'package:word_offline/binding/my_binding.dart';
import 'package:word_offline/view/home.dart';
import 'package:word_offline/view/splash.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Word App',
      initialRoute: '/',
      initialBinding: MyBinding(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
  getPages: [
    GetPage(name: '/',page: ()=>  Splash()) ,
    GetPage(name: '/home', page:()=> Home()) ,
  ],
    );
  }
}
