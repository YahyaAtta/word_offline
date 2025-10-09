import 'dart:ffi';
import 'package:win32/win32.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final speechEngine = SpVoice.createInstance();
  convertTextToSpeechWindows(String string) {
    String textToSpeak = string;
    CoInitializeEx(nullptr, COINIT_APARTMENTTHREADED);
    final pText = TEXT(textToSpeak); 
    speechEngine.speak(pText, SPEAKFLAGS.SPF_ASYNC, nullptr);
    free(pText);
  }
}
