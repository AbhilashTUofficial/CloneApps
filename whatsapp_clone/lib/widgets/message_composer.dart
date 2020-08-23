import 'package:flutter/material.dart';

class MessageComposer extends StatefulWidget {
  bool onFocus = false;

  @override
  _MessageComposerState createState() => _MessageComposerState();
}

class _MessageComposerState extends State<MessageComposer> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      child: Row(
        children: [
          GestureDetector(
            onTap: () => widget.onFocus = true,

            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              width: MediaQuery.of(context).size.width * 0.8,
              height: 48,
              child: Row(
                children: [
                  SizedBox(width: 8),
                  Icon(
                    Icons.insert_emoticon,
                    color: Colors.grey,
                    size: 30,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      textCapitalization: TextCapitalization.sentences,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Type a message',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 5),
          GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(30),
              ),
              height: 48,
              width: 48,
              child: Icon(
                widget.onFocus ? Icons.send : Icons.mic,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
