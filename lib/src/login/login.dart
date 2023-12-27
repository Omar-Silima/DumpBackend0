import 'package:flutter/material.dart';
import 'package:probation/components/button.dart';
import 'package:probation/components/text_field.dart';
import 'package:probation/src/home/register/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

   final usernameController = TextEditingController();
    final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        // resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
      child: Center(
        child: Column(children: [
          Container(
            padding: const EdgeInsets.only(top: 100),
            child: const Text('Login to your Account'),
          ),

          const SizedBox(
            height: 30,
          ),

          // username input
          UsernameTextField(
            controller: usernameController,
            hintText: 'Username',
          ),
          const SizedBox(
            height: 30,
          ),

          // password input
          PasswordTextField(
            controller: passwordController,
            hintText: 'Password',
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.only(left: 150),
            child: const InkWell(
              child: Text(
                'Reset Password',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 17,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),

          const LoginButton(),

          const SizedBox(
            height: 30,
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const RegistrationPage()));
            },
            style: OutlinedButton.styleFrom(
                // backgroundColor: Colors.red,
                ),
            child: const Text('Register'),
          ),
        ]),
      ),
    ));
  }
}
