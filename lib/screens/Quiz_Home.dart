import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../Component/Quiz.dart';

class Quiz_Home extends StatefulWidget {
  const Quiz_Home({super.key});

  @override
  State<Quiz_Home> createState() => _Quiz_HomeState();
}

class _Quiz_HomeState extends State<Quiz_Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Quiz Page",
            style: TextStyle(color: Colors.blue.shade600),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Ionicons.menu,
                  color: Colors.blue,
                ))
          ],
          leading: const Icon(
            Ionicons.person,
            color: Colors.blue,
          ),
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          bottom: const TabBar(tabs: [
            Icon(Icons.question_answer),
            Icon(Icons.question_answer),
            Icon(Icons.question_answer),
            Icon(Icons.question_answer),
            Icon(Icons.question_answer),
            Icon(Icons.question_answer),
            Icon(Icons.question_answer),
            Icon(Icons.question_answer),
            Icon(Icons.question_answer),
            Icon(Icons.question_answer),
          ]),
        ),
        body: TabBarView(children: [
          Qus(
              qus_text: "What is my name dsfsdfds fdsfds dfsdfds ?",
              ima: const AssetImage("images/2.jpg"),
              answer_1: "answer_1",
              answer_2: "answer_2",
              answer_3: "answer_3",
              answer_4: "answer_4",
              Correct_answer1: "Correct_answer",
              Correct_answer2: "Wronge answer",
              Correct_answer3: "Wronge answer3",
              Correct_answer4: "Wronge answer"),
          Qus(
              qus_text: "What is my name dsfsdfds fdsfds dfsdfds ?",
              ima: const AssetImage("images/2.jpg"),
              answer_1: "answer_1",
              answer_2: "answer_2",
              answer_3: "answer_3",
              answer_4: "answer_4",
              Correct_answer1: "Correct_answer",
              Correct_answer2: "Wronge answer",
              Correct_answer3: "Wronge answer3",
              Correct_answer4: "Wronge answer"),
          Qus(
              qus_text: "What is my name dsfsdfds fdsfds dfsdfds ?",
              ima: const AssetImage("images/2.jpg"),
              answer_1: "answer_1",
              answer_2: "answer_2",
              answer_3: "answer_3",
              answer_4: "answer_4",
              Correct_answer1: "Correct_answer",
              Correct_answer2: "Wronge answer",
              Correct_answer3: "Wronge answer3",
              Correct_answer4: "Wronge answer"),
          Qus(
              qus_text: "What is my name dsfsdfds fdsfds dfsdfds ?",
              ima: const AssetImage("images/2.jpg"),
              answer_1: "answer_1",
              answer_2: "answer_2",
              answer_3: "answer_3",
              answer_4: "answer_4",
              Correct_answer1: "Correct_answer",
              Correct_answer2: "Wronge answer",
              Correct_answer3: "Wronge answer3",
              Correct_answer4: "Wronge answer"),
          Qus(
              qus_text: "What is my name dsfsdfds fdsfds dfsdfds ?",
              ima: const AssetImage("images/2.jpg"),
              answer_1: "answer_1",
              answer_2: "answer_2",
              answer_3: "answer_3",
              answer_4: "answer_4",
              Correct_answer1: "Correct_answer",
              Correct_answer2: "Wronge answer",
              Correct_answer3: "Wronge answer3",
              Correct_answer4: "Wronge answer"),
          Qus(
              qus_text: "What is my name dsfsdfds fdsfds dfsdfds ?",
              ima: const AssetImage("images/2.jpg"),
              answer_1: "answer_1",
              answer_2: "answer_2",
              answer_3: "answer_3",
              answer_4: "answer_4",
              Correct_answer1: "Correct_answer",
              Correct_answer2: "Wronge answer",
              Correct_answer3: "Wronge answer3",
              Correct_answer4: "Wronge answer"),
          Qus(
              qus_text: "What is my name dsfsdfds fdsfds dfsdfds ?",
              ima: const AssetImage("images/2.jpg"),
              answer_1: "answer_1",
              answer_2: "answer_2",
              answer_3: "answer_3",
              answer_4: "answer_4",
              Correct_answer1: "Correct_answer",
              Correct_answer2: "Wronge answer",
              Correct_answer3: "Wronge answer3",
              Correct_answer4: "Wronge answer"),
          Qus(
              qus_text: "What is my name dsfsdfds fdsfds dfsdfds ?",
              ima: const AssetImage("images/2.jpg"),
              answer_1: "answer_1",
              answer_2: "answer_2",
              answer_3: "answer_3",
              answer_4: "answer_4",
              Correct_answer1: "Correct_answer",
              Correct_answer2: "Wronge answer",
              Correct_answer3: "Wronge answer3",
              Correct_answer4: "Wronge answer"),
          Qus(
              qus_text: "What is my name dsfsdfds fdsfds dfsdfds ?",
              ima: const AssetImage("images/2.jpg"),
              answer_1: "answer_1",
              answer_2: "answer_2",
              answer_3: "answer_3",
              answer_4: "answer_4",
              Correct_answer1: "Correct_answer",
              Correct_answer2: "Wronge answer",
              Correct_answer3: "Wronge answer3",
              Correct_answer4: "Wronge answer"),
          Qus(
              qus_text: "What is my name dsfsdfds fdsfds dfsdfds ?",
              ima: const AssetImage("images/2.jpg"),
              answer_1: "answer_1",
              answer_2: "answer_2",
              answer_3: "answer_3",
              answer_4: "answer_4",
              Correct_answer1: "Correct_answer",
              Correct_answer2: "Wronge answer",
              Correct_answer3: "Wronge answer3",
              Correct_answer4: "Wronge answer"),
        ]),
      ),
    );
  }
}
