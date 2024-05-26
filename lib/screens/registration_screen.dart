import 'package:flash_chat/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});
  static const String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            CustomTextField(
              hintText: 'Enter email id',
              onPress: () {},
              isObscure: false,
              icon: const Icon(null),
              onTap: () {},
            ),
            const SizedBox(
              height: 8.0,
            ),
            CustomTextField(
              hintText: 'Enter Password',
              onPress: () {},
              isObscure: true,
              icon: const Icon(Icons.remove_red_eye),
              onTap: () {},
            ),
            const SizedBox(
              height: 24.0,
            ),
            CustomButton(
                name: 'Register', onPress: () {}, color: Colors.blueAccent),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.hintText,
    required this.onPress,
    required this.isObscure,
    required this.icon,
    required this.onTap,
  });
  final String hintText;
  VoidCallback onPress, onTap;
  Icon icon;
  bool isObscure;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isObscure,
      onChanged: (value) {
        onPress;
      },
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
      ),
    );
  }
}
