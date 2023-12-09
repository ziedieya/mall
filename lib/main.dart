import 'package:flutter/material.dart';

import 'package:firstapp/account.dart';
import 'package:firstapp/bag.dart';
import 'package:firstapp/catalog.dart';
import 'package:firstapp/favorites.dart';
import 'package:firstapp/filter.dart';
import 'package:firstapp/forget.dart';
import 'package:firstapp/home.dart';
import 'package:firstapp/homecontainer.dart';
import 'package:firstapp/login.dart';
import 'package:firstapp/profil.dart';
import 'package:firstapp/splashscreen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: SplashScreen(),
    );
  }
}

