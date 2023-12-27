import 'package:flutter/material.dart';
import 'package:probation/src/home/home.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // padding: const EdgeInsets.only(top: 320),
      height: 40,
      width: 170,
      child: Material(
        borderRadius: BorderRadius.circular(10),
        color: Colors.amber,
        elevation: 7,
        shadowColor: Colors.yellow,
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
          child: const Center(
            child: Text(
              'Login here',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
