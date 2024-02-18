import 'dart:math';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';
import 'package:revitalang/common/widgets.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {

  final WebViewController controller = WebViewController();

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as VideoArguments;
    double screenWidth = MediaQuery.of(context).size.width;

    controller.setJavaScriptMode(JavaScriptMode.unrestricted);
    controller.loadRequest(Uri.parse(args.url));

    return Scaffold(
      appBar: AppBar(
        title: const Text("RevitaLang"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              const SizedBox(height: 25),
              Text(
                args.titulo,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Colors.black
                )
              ),
              const SizedBox(height: 20,),
              Container(
                height: 200,
                width: screenWidth - 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.grey,
                    width: 2
                  )
                ),
                child: WebViewWidget(
                  controller: controller,
                )
              ),
              const SizedBox(height: 20,),
              const Text(
                "Description:",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87
                )
              ),
              const SizedBox(height: 10),
              Text(
                args.descricao,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54
                )
              ),
              const SizedBox(height: 20,),
              const Text(
                  "Vocabulary:",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87
                  )
              ),
              const SizedBox(height: 10),
              Text(
                  args.vocabulario,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54
                  )
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.pushNamed(context, "/lessonPage", arguments: Random().nextInt(4));
                  });
                },
                child: Container(
                  width: screenWidth - 30,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: Text(
                      "GO TO LESSON",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 25,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10)
            ],
          ),
        ),
      ),
    );
  }
}
