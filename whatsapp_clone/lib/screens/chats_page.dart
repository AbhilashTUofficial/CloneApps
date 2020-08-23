import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/Contacts.dart';

import 'chat_screen.dart';

class ChatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
      itemCount: contactList.length,
      itemBuilder: (context, int index) {
        return GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => ChatScreen(userName: contactList[index]
                  .name,userDp: contactList[index].imgUrl,),
            ),
          ),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 2),
            height: 80,
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 15),
                    CircleAvatar(
                      backgroundImage:
                          AssetImage(contactList[index].imgUrl),
                      radius: 32,
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          contactList[index].name,
                          style: TextStyle(fontSize: 16, letterSpacing: 1),
                        ),
                        Text(
                          contactList[index].message,
                          style: TextStyle(color: Colors.black45),
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 30, right: 15),
                  child: Text(contactList[index].time,
                      style: TextStyle(color: Colors.black54)),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
