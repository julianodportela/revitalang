import 'dart:async';

import 'package:flutter/material.dart';

class SplashscreenPage extends StatefulWidget {
  const SplashscreenPage({super.key});

  @override
  State<SplashscreenPage> createState() => _SplashscreenPageState();
}

class _SplashscreenPageState extends State<SplashscreenPage> {

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed("/mainPage");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/appstore.png', scale: 2)
      ),
    );
  }
}
