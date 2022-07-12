import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  SplashView({Key? key}) : super(key: key);
  var colorizeColors = [Colors.blueAccent, Colors.redAccent];

  var colorizeTextStyle = const TextStyle(fontSize: 30.0, fontFamily: 'Lato');
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance
        .addPostFrameCallback((_) async => await controller.loadSplash());
    return Scaffold(
      backgroundColor: const Color(0xff353A40),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/car.png',
          ),
          const SizedBox(height: 10.0),
          AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText(
                'TESLA',
                textStyle: colorizeTextStyle,
                colors: colorizeColors,
              ),
            ],
            isRepeatingAnimation: true,
          ),
        ],
      )),
    );
  }
}
