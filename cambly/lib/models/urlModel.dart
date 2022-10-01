import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri Facebook_URL = Uri.parse('https://www.facebook.com/Camblyk');
final Uri Intagram_URL = Uri.parse('https://www.instagram.com//CamblyK');
final Uri Twitter_URL = Uri.parse('https://www.twitter.com/CamblyK');

Future<void> Facebook__Function() async {
  if (!await launchUrl(Facebook_URL)) {
    throw 'Could not launch $Facebook_URL';
  }
}

Future<void> Instagram_Function() async {
  if (!await launchUrl(Intagram_URL)) {
    throw 'Could not launch $Intagram_URL';
  }
}

Future<void> Twitter_Function() async {
  if (!await launchUrl(Twitter_URL)) {
    throw 'Could not launch $Twitter_URL';
  }
}

class UrlClass extends StatelessWidget {
  UrlClass(
      {required this.myPlatFormIcon,
      required this.myPlatFormSubTitle,
      required this.myPlatFormTitle,
      required this.myFunction});
  String? myPlatFormTitle;
  String? myPlatFormSubTitle;
  IconData? myPlatFormIcon;
  Function()? myFunction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          ListTile(
              onTap: myFunction,
              title: Text(
                "$myPlatFormTitle",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "$myPlatFormSubTitle",
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(
                myPlatFormIcon,
                color: Color.fromARGB(255, 199, 14, 14),
              )),
        ],
      ),
    );
  }
}
