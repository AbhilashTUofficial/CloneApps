import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:whatsapp_clone/screens/chats_page.dart';
import 'package:whatsapp_clone/screens/home_page.dart';

void main() => runApp(WhatsAppClone());

class WhatsAppClone extends StatefulWidget {
  @override
  _WhatsAppCloneState createState() => _WhatsAppCloneState();
}

class _WhatsAppCloneState extends State<WhatsAppClone> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsAppClone",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Hexcolor("#128C7E"),
        accentColor: Hexcolor("#25D366")
      ),
      home: HomePage(),
    );
  }
}
