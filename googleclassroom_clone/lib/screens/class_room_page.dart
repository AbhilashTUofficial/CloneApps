import 'package:flutter/material.dart';

class ClassRoomPage extends StatefulWidget {
  AssetImage bannerImg;
  String className;

  ClassRoomPage({this.className, this.bannerImg});

  @override
  _ClassRoomPageState createState() => _ClassRoomPageState();
}

class _ClassRoomPageState extends State<ClassRoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: Icon(
          Icons.menu,
          color: Colors.black87,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.info_outline,
              color: Colors.black87,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black87,
              size: 26,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 120,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Image(
                    image: widget.bannerImg,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: 200,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(bottom: 40, left: 30),
                  child: Text(
                    widget.className,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 3)]),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundImage: AssetImage('Assets/Images/banner12.jpg'),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Share with your class...",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )),Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                border:Border.all(style: )),
          )
        ],
      ),
    );
  }
}
