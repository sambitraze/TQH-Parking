import 'package:flutter/material.dart';
import 'package:parking/screens/homepage.dart';
import 'package:custom_splash/custom_splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {
        '/parkomap' : (context) => HomePage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CustomSplash(
        imagePath: 'assets/logo.png',
        backGroundColor: Colors.black,
        animationEffect: 'zoom-in',
        logoSize: 200,
        home: HomePage(),
        duration: 2500,
        type: CustomSplashType.StaticDuration,
      )
    );
  }
}

