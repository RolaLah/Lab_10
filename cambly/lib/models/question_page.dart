import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Question extends StatelessWidget {
  Question({
    required this.QColor,
    required this.qus_text,
    required this.answer_1,
    required this.answer_2,
    required this.answer_3,
    required this.answer_4,
  });
  Color? QColor;
  String? qus_text;

  String? answer_1;
  String? answer_2;
  String? answer_3;
  String? answer_4;

  bool isPressed = false;
  Color isTrue = Colors.green;
  Color isFalse = Colors.red;
  Color btnColor = Color.fromARGB(255, 247, 231, 231);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Container(
          width: double.infinity,
          height: 120,
          margin: EdgeInsets.only(bottom: 10, right: 30, left: 30),
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          decoration: BoxDecoration(
              color: QColor, borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              "$qus_text",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        GestureDetector(
            onTap: () {
              CupertinoAlertDialog(
                title: Text("GREAT"),
                content: Image(
                  image: AssetImage("images/11.png"),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: btnColor,
                  border: Border.all(color: Colors.amber),
                  borderRadius: BorderRadius.circular(20)),
              child: Text("$answer_1",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Cairo",
                      fontWeight: FontWeight.bold)),
            )),
        GestureDetector(
            onTap: () {
              CupertinoAlertDialog(
                title: Text("sad"),
                content: Image(
                  image: AssetImage("images/6.jpg"),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: btnColor,
                  border: Border.all(color: Colors.amber),
                  borderRadius: BorderRadius.circular(20)),
              child: Text("$answer_2",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Cairo",
                      fontWeight: FontWeight.bold)),
            )),
        GestureDetector(
            onTap: () {
              CupertinoAlertDialog(
                title: Text("sad"),
                content: Image(
                  image: AssetImage("images/6.jpg"),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: btnColor,
                  border: Border.all(color: Colors.amber),
                  borderRadius: BorderRadius.circular(20)),
              child: Text("$answer_3",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Cairo",
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
            )),
        GestureDetector(
            onTap: () {
              CupertinoAlertDialog(
                title: Text("sad"),
                content: Image(
                  image: AssetImage("images/6.jpg"),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: btnColor,
                  border: Border.all(color: Colors.amber),
                  borderRadius: BorderRadius.circular(20)),
              child: Text("$answer_4",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Cairo",
                      fontWeight: FontWeight.bold)),
            )),
      ]),
    );
  }
}
