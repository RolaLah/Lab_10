import 'package:flutter/material.dart';

import '../models/question_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.amber,
              bottom: TabBar(tabs: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.question_answer),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.question_answer),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.question_answer),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.question_answer),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.question_answer),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.question_answer),
                ),
              ]),
              title: Text(
                "Level check",
                style: TextStyle(
                    fontSize: 30,
                    wordSpacing: 7,
                    letterSpacing: 3,
                    fontFamily: "AbyssinicaSIL"),
              ),
            ),
            body: TabBarView(
              children: [
                Question(
                  qus_text: "What is this color name?",
                  answer_1: "Purble",
                  answer_2: "Yellow",
                  answer_3: "Green",
                  answer_4: "Red",
                  QColor: Color.fromARGB(255, 211, 31, 218),
                ),
                Question(
                  qus_text: "What is this color name?",
                  answer_1: "Red",
                  answer_2: "Pink",
                  answer_3: "Green",
                  answer_4: "Blue",
                  QColor: Color.fromARGB(255, 207, 24, 11),
                ),
                Question(
                  qus_text: "What is this color name?",
                  answer_1: "Blue",
                  answer_2: "Yellow",
                  answer_3: "Red",
                  answer_4: "Gray",
                  QColor: Color.fromARGB(255, 69, 166, 245),
                ),
                Question(
                  qus_text: "What is this color name?",
                  answer_1: "Yellow",
                  answer_2: "Green",
                  answer_3: "White",
                  answer_4: "Red",
                  QColor: Color.fromARGB(255, 253, 253, 78),
                ),
                Question(
                  qus_text: "What is this color name?",
                  answer_1: "Black",
                  answer_2: "Purble",
                  answer_3: "Orange",
                  answer_4: "Grey",
                  QColor: Colors.black,
                ),
                Question(
                  qus_text: "What is this color name?",
                  answer_1: "Green",
                  answer_2: "Orange",
                  answer_3: "White",
                  answer_4: "Brown",
                  QColor: Color.fromARGB(255, 86, 223, 91),
                )
              ],
            )));
  }
}
