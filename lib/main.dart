import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:berlitz/Widget_main/Login_Widget/Logo.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'dart:io';

import 'package:berlitz/Screen/HomeScreen.dart';
import 'package:berlitz/Screen/Login.dart';
import 'package:berlitz/Screen/Notifications.dart';

import 'package:flutter/material.dart';

import 'Screen/Courses.dart';
import 'Screen/courses_details.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    HttpOverrides.global=MyHttpOverrides();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
 home:       AnimatedSplashScreen(

            duration: 3000,
            splash: Logo_App(width: 255, height: 255),
            nextScreen: Login_Screen(),

            splashTransition: SplashTransition.fadeTransition,
    //        pageTransitionType: PageTransitionType.scale,
            backgroundColor: Colors.white)

    );
  }
}


class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}