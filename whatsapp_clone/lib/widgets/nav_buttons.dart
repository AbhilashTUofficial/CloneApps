import 'package:flutter/material.dart';

class NavButtons extends StatefulWidget {
  final String tabName;
  final int index;

  NavButtons(this.tabName,this.index);

  @override
  _NavButtonsState createState() => _NavButtonsState();
}

class _NavButtonsState extends State<NavButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          FlatButton(
            splashColor: Colors.white24,
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            onPressed: () {},
            child: Text(
              widget.tabName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            margin: EdgeInsets.all(0),
            width: 100,
            height: 4,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
