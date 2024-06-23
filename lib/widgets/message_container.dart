import 'package:flutter/material.dart';

class MessageContainer extends StatelessWidget {
  const MessageContainer({
    super.key,
    required this.text,
    required this.sender,
    required this.isMe,
    required this.color,
  });
  final String text;
  final String sender;
  final bool isMe;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
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
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
                topLeft: Radius.circular(30)),
            color: color,
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                text,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
