import 'dart:ffi';

import 'package:get/get.dart';
import 'package:win32/win32.dart';
import 'package:word_offline/view/home.dart';

class SplashController extends GetxController{
  final speechEngine = SpVoice.createInstance();
  convertTextToSpeechWindows(String string) {
    String textToSpeak = string;
    CoInitializeEx(nullptr, COINIT_APARTMENTTHREADED);
    final pText = TEXT(textToSpeak);
    speechEngine.speak(pText, SPEAKFLAGS.SPF_ASYNC ,nullptr);
    free(pText);
  }
  Future initalizeApp() async{
      await convertTextToSpeechWindows("Welcome To Word App") ;
  }
 @override
  void onReady() {
    initalizeApp().then((_) => Get.off(()=> Home())) ;
   super.onReady();
 }

}