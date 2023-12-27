import 'package:flutter/material.dart';

class UsernameTextField extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hintText;

  const UsernameTextField({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      height: 50,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.blue),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}

class PasswordTextField extends StatefulWidget {
  final controller;
  final String hintText;

  const PasswordTextField(
      {super.key, required this.controller, required this.hintText});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool hidePassword = true;
  final controller = TextEditingController();
  String hintText = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      height: 50,
      child: TextField(
        controller: controller,
        obscureText: hidePassword,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.blue),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
            hintText: hintText,
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    hidePassword = !hidePassword;
                  });
                },
                icon: Icon(hidePassword ? Icons.lock : Icons.remove_red_eye))),
      ),
    );
  }
}
