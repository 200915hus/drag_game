import 'package:drag_game/orginal_home_page.dart';
import 'package:drag_game/pages/game_page.dart';
import 'package:drag_game/pages/english_page.dart';
import 'package:drag_game/pages/math_page.dart';
import 'package:drag_game/pages/russian_page.dart';
import 'package:drag_game/pages/splash_page.dart';
import 'package:flutter/material.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,

      ),
      home: SplashPage(),
      debugShowCheckedModeBanner: false,

      routes: {
        SplashPage.id:(context)=>SplashPage(),
        Orginal.id:(context)=>Orginal(),
        HomePage.id:(context)=>HomePage(),
        RussianPage.id:(context)=>RussianPage(),
        GamePage.id:(context)=>GamePage(),
        MathPage.id:(context)=>MathPage(),
      },
    );
  }
}
