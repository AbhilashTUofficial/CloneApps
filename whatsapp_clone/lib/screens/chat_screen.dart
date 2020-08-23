import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/message_composer.dart';

class ChatScreen extends StatefulWidget {
  String userName;
  String userDp;

  ChatScreen({this.userName, this.userDp});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Row(
              children: [
                Icon(Icons.arrow_back),
                CircleAvatar(
                  backgroundImage: AssetImage(widget.userDp),
                  radius: 15,
                ),
              ],
            ),
          ),
          title: Container(
              child: Row(
            children: [
              Text(widget.userName),
            ],
          )),
          actions: [
            IconButton(
              icon: Icon(
                Icons.videocam,
                size: 30,
              ),
              onPressed: () {},
              splashRadius: 25,
            ),
            IconButton(
              icon: Icon(
                Icons.call,
                size: 23,
              ),
              onPressed: () {},
              splashRadius: 25,
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
                size: 23,
              ),
              onPressed: () {},
              splashRadius: 25,
            )
          ],
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            color: Colors.blue,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image(
                  image: AssetImage("Assets/Images/bc.png"),
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                ),
                MessageComposer(),
              ],
            ),
          ),
        ));
  }
}
