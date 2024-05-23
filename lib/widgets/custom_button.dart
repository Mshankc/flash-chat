import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.name,
    required this.onPress,
    required this.color,
  });
  final String name;
  final Color color;
  VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      color: color,
      borderRadius: BorderRadius.circular(30.0),
      child: MaterialButton(
        minWidth: 200.0,
        height: 42.0,
        onPressed: () {
          onPress;
        },
        child: Text(
          name,
        ),
      ),
    );
  }
}
