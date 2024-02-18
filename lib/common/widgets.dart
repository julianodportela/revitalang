import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class VideoArguments {
  String titulo;
  String descricao;
  String vocabulario;
  String url;

  VideoArguments({required this.titulo, required this.descricao, required this.vocabulario, required this.url});
}

class VideoWidget extends StatelessWidget {
  VideoWidget({
    required this.title,
    required this.subtitle,
    required this.descricao,
    required this.vocabulario,
    required this.url,
    super.key});

  final String title;
  final String subtitle;
  final String descricao;
  final String vocabulario;
  final String url;

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    final controller = WebViewController();

    controller.setJavaScriptMode(JavaScriptMode.unrestricted);
    controller.loadRequest(Uri.parse(url));

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "/videoPage", arguments: VideoArguments(titulo: title, descricao: descricao, vocabulario: vocabulario, url: url));
        },
        child: Container(
          width: screenWidth - 300,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.grey,
              width: 1
            )
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Container(
                height: 200,
                width: screenWidth - 30,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    WebViewWidget(controller: controller),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/videoPage", arguments: VideoArguments(titulo: title, descricao: descricao, vocabulario: vocabulario, url: url));
                      },
                      child: Container(
                        height: 200,
                        color: Colors.transparent,
                        width: screenWidth - 30,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}

class LessonCircleWidget extends StatelessWidget {
  const LessonCircleWidget({required this.title, required this.icon, required this.lessonId, super.key});

  final String title;
  final int lessonId;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed("/lessonPage", arguments: lessonId);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
              ),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                  border: Border.all(
                    color: Colors.white, // The color of the ring
                    width: 5, // The thickness of the ring
                  ),
                ),
                child: Center(
                  child: Icon(
                    icon,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Flexible(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 16,
                fontWeight: FontWeight.w500
              ),
            ),
          )
        ],
      ),
    );
  }
}

class LessonWidget extends StatelessWidget {
  const LessonWidget({required this.exercise, super.key});

  final String exercise;

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          "Answer this exercise:",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.black54
          ),
        ),
        const SizedBox(height: 15,),
        Container(
          width: screenWidth - 50,
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.grey,
                  width: 2
              ),
              borderRadius: BorderRadius.circular(15)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
            child: Text(
              exercise,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ),
        const SizedBox(height: 25,),
        const Text(
          "Write your answer:",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.black54
          ),
        ),
      ],
    );
  }
}