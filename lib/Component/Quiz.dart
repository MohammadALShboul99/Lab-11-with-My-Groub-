import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Qus extends StatefulWidget {
  Qus(
      {required this.qus_text,
      required this.ima,
      required this.answer_1,
      required this.answer_2,
      required this.answer_3,
      required this.answer_4,
      required this.Correct_answer1,
      required this.Correct_answer2,
      required this.Correct_answer3,
      required this.Correct_answer4});
  String? qus_text;
  String? answer_1;

  String? answer_2;

  String? answer_3;

  String? answer_4;
  String? Correct_answer1;

  String? Correct_answer2;

  String? Correct_answer3;

  String? Correct_answer4;
  AssetImage ima;

  String? val;
  @override
  State<Qus> createState() => _QusState();
}

class _QusState extends State<Qus> {
  String Groub_by = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const Divider(
                height: 20,
              ),
              Container(
                  width: double.infinity,
                  height: 190,
                  child: Image(
                    image: widget.ima,
                  )),
              const Divider(
                height: 30,
              ),
              Text(
                "${widget.qus_text}",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              RadioListTile(
                title: Text("${widget.answer_1}"),
                value: "s",
                groupValue: Groub_by,
                onChanged: (value) {
                  setState(() {
                    Groub_by = value.toString();
                    widget.val = value;
                  });
                },
              ),
              RadioListTile(
                title: Text("${widget.answer_2}"),
                value: "ss",
                groupValue: Groub_by,
                onChanged: (value) {
                  setState(() {
                    Groub_by = value.toString();
                    widget.val = value;
                  });
                },
              ),
              RadioListTile(
                title: Text("${widget.answer_3}"),
                value: "sss",
                groupValue: Groub_by,
                onChanged: (value) {
                  setState(() {
                    Groub_by = value.toString();
                    widget.val = value;
                  });
                },
              ),
              RadioListTile(
                title: Text("${widget.answer_4}"),
                value: "ssss",
                groupValue: Groub_by,
                onChanged: (value) {
                  setState(() {
                    Groub_by = value.toString();
                    widget.val = value;
                  });
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (widget.val != "s" &&
                          widget.val != "ss" &&
                          widget.val != "sss" &&
                          widget.val != "ssss") {
                        showDialog(
                            context: context,
                            builder: ((context) {
                              return AlertDialog(
                                content: Container(
                                  width: 100,
                                  height: 100,
                                  child: const Text(
                                      "Please Choose One Of This Options "),
                                ),
                              );
                            }));
                      } else {
                        if (widget.val == "s") {
                          showDialog(
                              context: context,
                              builder: ((context) {
                                return AlertDialog(
                                  content: Container(
                                    width: 100,
                                    height: 100,
                                    child: Text("${widget.Correct_answer1}"),
                                  ),
                                );
                              }));
                        } else if (widget.val == "ss") {
                          showDialog(
                              context: context,
                              builder: ((context) {
                                return AlertDialog(
                                  content: Container(
                                    width: 100,
                                    height: 100,
                                    child: Text("${widget.Correct_answer2}"),
                                  ),
                                );
                              }));
                        } else if (widget.val == "sss") {
                          showDialog(
                              context: context,
                              builder: ((context) {
                                return AlertDialog(
                                  content: Container(
                                    width: 100,
                                    height: 100,
                                    child: Text("${widget.Correct_answer3}"),
                                  ),
                                );
                              }));
                        } else {
                          showDialog(
                              context: context,
                              builder: ((context) {
                                return AlertDialog(
                                  content: Container(
                                    width: 100,
                                    height: 100,
                                    child: Text("${widget.Correct_answer4}"),
                                  ),
                                );
                              }));
                        }
                      }
                    });
                  },
                  child: Text("Submited"))
            ],
          ),
        ),
      ),
    );
  }
}
