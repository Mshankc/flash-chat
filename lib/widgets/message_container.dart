import 'package:flutter/material.dart';

class MessageContainer extends StatelessWidget {
  const MessageContainer({
    super.key,
    required this.text,
    required this.sender,
    required this.isMe,
  });
  final String text;
  final String sender;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Text(
            sender,
            style: const TextStyle(color: Colors.grey, fontSize: 10),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 1.0),
          child: Material(
            borderRadius: isMe
                ? BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    topLeft: Radius.circular(30))
                : BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    topRight: Radius.circular(30)),
            color: isMe ? Colors.blue : Colors.white,
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: isMe ? Colors.white : Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
