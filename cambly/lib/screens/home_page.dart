import 'package:cambly/models/urlModel.dart';
import 'package:cambly/screens/quiz.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hi Baby... ",
          style: TextStyle(
              fontSize: 30,
              wordSpacing: 7,
              letterSpacing: 3,
              fontFamily: "AbyssinicaSIL"),
        ),
        backgroundColor: Color.fromARGB(255, 248, 194, 17),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            CircleAvatar(
              radius: 150,
              foregroundImage: AssetImage("images/2.jpg"),
            ),
            Divider(
              height: 10,
              color: Colors.white,
            ),
            UrlClass(
              myFunction: Facebook__Function,
              myPlatFormTitle: "Facebook",
              myPlatFormSubTitle: "Join to our Facebook page",
              myPlatFormIcon: Icons.people,
            ),
            Divider(
              height: 5,
              color: Colors.orange,
            ),
            UrlClass(
              myFunction: Instagram_Function,
              myPlatFormTitle: "Instagram",
              myPlatFormSubTitle: "Join to our Instagram page",
              myPlatFormIcon: Icons.people,
            ),
            Divider(
              height: 5,
              color: Colors.orange,
            ),
            UrlClass(
              myFunction: Twitter_Function,
              myPlatFormTitle: "Twitter",
              myPlatFormSubTitle: "Join to our Twitter page",
              myPlatFormIcon: Icons.people,
            ),
            Divider(
              height: 5,
              color: Colors.orange,
            ),
            Row(
              children: [
                SizedBox(
                  width: 40,
                  height: 80,
                ),
                Text(
                  "Happy with us ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 199, 14, 14),
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontFamily: "Cairo"),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.face_retouching_natural)
              ],
            )
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Image(image: AssetImage("images/1.png")),
            SizedBox(
              height: 90,
            ),
            Text(
              "Are You Ready..!",
              style: TextStyle(
                  color: Color.fromARGB(255, 199, 14, 14),
                  fontSize: 40,
                  wordSpacing: 8,
                  letterSpacing: 4,
                  fontFamily: "AbyssinicaSIL"),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shadowColor: Color.fromARGB(255, 172, 15, 4),
                ),
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return Quiz();
                    })));
                  });
                },
                child: Text("Go to level check",
                    style: TextStyle(
                        color: Color.fromARGB(255, 199, 14, 14),
                        fontSize: 40,
                        wordSpacing: 3,
                        letterSpacing: 4,
                        fontFamily: "AbyssinicaSIL")))
          ],
        ),
      ),
    );
  }
}
