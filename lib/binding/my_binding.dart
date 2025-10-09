import 'package:get/get.dart';
import 'package:word_offline/controller/home_controller.dart';
import 'package:word_offline/controller/splash_controller.dart';

class MyBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController()) ;
    Get.lazyPut(() => HomeController()) ;
  }

}