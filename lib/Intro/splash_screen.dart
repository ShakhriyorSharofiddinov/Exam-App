import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:exam_result/LogInParol/login.dart';
import 'package:exam_result/Core/size_config.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: AnimatedSplashScreen(
        backgroundColor: Colors.white,
        splashIconSize: SizeConfig.defaultSize! * 25,
        splash: Lottie.asset(
          "assets/splash_screen.json",
        ),
        nextScreen: const LoginScreen(),
      ),
    );
  }
}
