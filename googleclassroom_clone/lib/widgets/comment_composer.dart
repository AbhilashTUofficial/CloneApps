import 'package:flutter/material.dart';
import 'package:googleclassroom_clone/data/comments.dart';

class CommentComposer extends StatefulWidget {
  @override
  _CommentComposerState createState() => _CommentComposerState();
}

class _CommentComposerState extends State<CommentComposer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: commentList.length,
            itemBuilder: (context, int index) {
              return Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(color: Colors.black26, blurRadius: 3)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 10),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('Assets/Images/banner12.jpg'),
                          ),
                          SizedBox(width: 10),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  commentList[index].userName,
                                  style: TextStyle(),
                                ),
                                Text(
                                  commentList[index].date,
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ]),
                        ],
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                        ),
                        onPressed: () {},
                      )
                    ],
                  ));
            }));
  }
}
