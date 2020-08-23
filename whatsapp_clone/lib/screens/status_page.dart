import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:whatsapp_clone/data/Status.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 2),
          height: 80,
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            children: [
              SizedBox(width: 15),
              Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("Assets/Images/img0.jpg"),
                    radius: 32,
                  ),
                  Positioned(
                    bottom: 0,right: 0,
                    child: Container(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  )
                ],
              ),
              SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My status",
                    style: TextStyle(fontSize: 16, letterSpacing: 1),
                  ),
                  Text(
                    "Tap to add status update",
                    style: TextStyle(color: Colors.black45),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          alignment: Alignment.centerLeft,
          child: Text(
            "    Recent "
            "updates",
            style: TextStyle(color: Colors.black45),
          ),
        ),
        Expanded(
          child: Container(
            child: ListView.builder(
                itemCount: statusList.length,
                itemBuilder: (context, int index) {
                  return Container(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 2),
                      height: 80,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Row(
                        children: [
                          SizedBox(width: 15),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Hexcolor("#128C7E"),
                                radius: 32,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 30,
                              ),
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage(statusList[index].statusUrl),
                                radius: 28,
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                statusList[index].name,
                                style:
                                    TextStyle(fontSize: 16, letterSpacing: 1),
                              ),
                              Text(
                                statusList[index].time,
                                style: TextStyle(color: Colors.black45),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
