// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:word_offline/controller/home_controller.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  HomeController homeController = Get.find();
  TextEditingController input = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Word App"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: input,
                minLines: 1,
                maxLines: 10,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.speaker),
                    hintText: 'Enter your Words and listen it',
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            ),
            FilledButton(
                style: FilledButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                ),
                onPressed: () {
                  homeController.convertTextToSpeechWindows(input.text);
                },
                child: const Text("Listen")),
          ],
        ),
      ),
    );
  }
}
