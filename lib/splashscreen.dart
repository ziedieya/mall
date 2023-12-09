import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firstapp/aboutus.dart';
import 'package:firstapp/home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 250,
      // height: 150,
      //color: Color.fromARGB(255, 150, 91, 14),
      child: AnimatedSplashScreen(
        duration: 2000,
        splash: Image.asset(
          'assets/images/logo.png',
          width: 350,
          height: 200,
        ),
        nextScreen: AboutUs(),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        backgroundColor: Colors.white,
      ),
    );
  }
}
