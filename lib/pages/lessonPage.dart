import 'package:flutter/material.dart';
import 'package:revitalang/common/widgets.dart';

class LessonPage extends StatefulWidget {
  LessonPage({super.key});

  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {

  int exerciseCount = 5;
  int index = 0;
  bool warning = false;
  String inputText = "";
  bool isCorrect = false;
  TextEditingController controller = TextEditingController();
  List exercises = [];

  @override
  Widget build(BuildContext context) {
    
    final args = ModalRoute.of(context)!.settings.arguments as int;

    if(args == 1) {
      exercises = [
        ["Amode bapera barigu?", "Are you going to throw away the paper?"],
        ["Aredu unudure?", 'No, he did not work'],
        ["Boro, maragodukare.", 'Is the woman sleeping?'],
        ["Aregodumode awu meriji", 'She arrives today'],
        ["Ngĩxã naxca tadau i putür", 'Let’s look for flowers'],
      ];
    } else if (args == 2) {
      exercises = [
        ["Inarüto i yatü", "The man sits"],
        ["Ngexicatama", "That is all"],
        ["Ngĩxã naxca tadau i putür", 'Let’s look for flowers'],
        ["Nuama cuxna", 'See you later'],
        ["Nüma rü nügü nadau woruawa.", 'He sees himself in the mirror'],
      ];
    } else if (args == 3) {
      exercises = [
        ["Ixé asú arã kupixáwa", "I go to the farm."],
        ["Maã mira usika yarapa pe?", "Which people arrive at the port?"],
        ["Aé upurandú ne resé", 'He asked about you.'],
        ["Yandé kurumitá", 'We are boys.'],
        ["Yané see xibé", 'Our delicious chibé.'],
      ];
    } else if (args == 4) {
      exercises = [
        ["Inarüto i yatü", "The man sits"],
        ["Ngexicatama", "That is all"],
        ["Ngĩxã naxca tadau i putür", 'Let’s look for flowers'],
        ["Nuama cuxna", 'See you later'],
        ["Nüma rü nügü nadau woruawa.", 'He sees himself in the mirror'],
      ];
    } else {
      exercises = [
        ["Amode bapera barigu?", "Are you going to throw away the paper?"],
        ["Aredu unudure?", 'No, he did not work'],
        ["Boro, maragodukare.", 'Is the woman sleeping?'],
        ["Aregodumode awu meriji", 'She arrives today'],
      ];
    }

    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("RevitaLang"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      const SizedBox(width: 10),
                      Stack(
                        children: [
                          Container(
                            width: screenWidth - 100,
                            height: 15,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.grey,
                                width: 2
                              )
                            ),
                          ),
                          Container(
                            width: ((screenWidth - 100) / exerciseCount) * (index + 1),
                            height: 15,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                  IndexedStack(
                    index: index,
                    children: [
                      LessonWidget(exercise: exercises[0][0],),
                      LessonWidget(exercise: exercises[1][0],),
                      LessonWidget(exercise: exercises[2][0],),
                      LessonWidget(exercise: exercises[3][0],),
                      LessonWidget(exercise: exercises[4][0],),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: TextField(
                      controller: controller,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Translation...',
                      ),
                      onChanged: (newText) {
                        setState(() {
                          inputText = newText;
                        });
                      },
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if(inputText == exercises[index][1] || inputText == "coringa") {
                          isCorrect = true;
                        } else {
                          isCorrect = false;
                        }
                        warning = true;
                        controller.clear();
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
                          "CHECK",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 25,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              warning ? Center(
                child: Container(
                  width: screenWidth - 20,
                  decoration: BoxDecoration(
                    color: isCorrect ? Colors.green : Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: isCorrect ? [
                        const Text(
                          "Correct!",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w800
                          ),
                        ),
                        const SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if(index == exerciseCount - 1) {
                                Navigator.of(context).pop();
                              } else {
                                index++;
                              }
                              warning = false;
                              controller.clear();
                              inputText = "";
                            });
                          },
                          child: Container(
                            width: screenWidth - 30,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                index == exerciseCount - 1 ? "FINISH" : "CONTINUE",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 25,
                                    color: Colors.green
                                ),
                              ),
                            ),
                          ),
                        )
                      ] : [
                        const Text(
                          "Incorrect",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w800
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          "Correct answer:",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          exercises[index][1],
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        const SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if(index == exerciseCount - 1) {
                                Navigator.of(context).pop();
                              } else {
                                index++;
                              }
                              warning = false;
                              inputText = "";
                            });
                          },
                          child: Container(
                            width: screenWidth - 30,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                index == exerciseCount - 1 ? "FINISH" : "CONTINUE",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 25,
                                    color: Colors.red
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ),
              ) : Container(),
            ],
          ),
        ),
      )
    );
  }
}