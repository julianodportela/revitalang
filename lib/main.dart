import 'package:flutter/material.dart';
import 'package:revitalang/pages/lessonPage.dart';
import 'package:revitalang/pages/mainPage.dart';
import 'package:revitalang/pages/splashscreenPage.dart';
import 'package:revitalang/pages/videoPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          color: Colors.red,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700
          )
        ),
        bottomAppBarTheme: const BottomAppBarTheme(
          color: Colors.red,
        ),
      ),
      title: 'RevitaLang',
      home: const SplashscreenPage(),
      routes: {
        "/splashscreenPage": (_) => const SplashscreenPage(),
        "/mainPage": (_) => const MainPage(),
        "/lessonPage": (_) => LessonPage(),
        "/videoPage": (_) => const VideoPage(),
      },
    );
  }
}
