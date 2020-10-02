import 'package:flutter/material.dart';

import 'Screens/homepage.dart';

void main() => runApp(YouTubeClone());

class YouTubeClone extends StatefulWidget {
  @override
  _YouTubeCloneState createState() => _YouTubeCloneState();
}

class _YouTubeCloneState extends State<YouTubeClone> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "YouTubeClone",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColorLight: Colors.white,
          primaryColorDark: Colors.black87,
          accentColor: Colors.grey),
      home:HomePage(),
    );
  }
}
