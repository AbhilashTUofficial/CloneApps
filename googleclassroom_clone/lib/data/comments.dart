import 'package:flutter/material.dart';

class Comments {
  String userName;
  Image userDp;
  String date;
  String comment;

  Comments({this.userName, this.userDp, this.date, this.comment});
}

List<Comments> commentList = [
  Comments(
      userName: "Kitty Cat",
      userDp: Image(image: AssetImage("Assets/Images/Dp/cat1.jpg")),
      date: "Aug 28",
      comment: "I'm gonna kill you.")
];
