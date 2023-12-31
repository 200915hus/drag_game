import 'dart:async';
import 'package:drag_game/orginal_home_page.dart';
import 'package:drag_game/pages/english_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  static final String id = "splash_page";
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
       Duration(seconds: 3),()=>Navigator.pushReplacementNamed(context, Orginal.id)
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: Container(
        height: 200,
        width: 200,
        child: Lottie.asset("assets/lottie/lottie.json")
      ),
    ),
    );
  }
}
