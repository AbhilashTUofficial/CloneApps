import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/nav_buttons.dart';

class Chats extends StatefulWidget {


  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  Widget _NavBuilder() {
    return Row(
      children: [
        NavButtons("CHATS",1),
        NavButtons("STATUS",2),
        NavButtons("CALLS",3),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "WhatsApp",
          style: TextStyle(letterSpacing: 1),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 26,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              size: 26,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Container(
              height: 53,
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.camera_alt,
                          color: Colors.white70,
                        ),
                        onPressed: () {},
                      ),
                      _NavBuilder(),
                      SizedBox.shrink()
                    ],
                  ),
                ],
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: IconButton(
          icon: Icon(
            Icons.chat,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        onPressed: () {},
      ),
    );
  }
}
