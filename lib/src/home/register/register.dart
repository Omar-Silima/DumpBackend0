import 'package:flutter/material.dart';
import 'package:probation/components/text_field.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 80),
                child: const Text('Registration'),
              ),

              const SizedBox(
                height: 20,
              ),

              // username input
              UsernameTextField(
                controller: usernameController,
                hintText: 'Username',
              ),

              const SizedBox(
                height: 20,
              ),

              //  password input
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                height: 50,
                child: TextField(
                  // controller: controller,
                  obscureText: hidePassword,
                  decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      hintText: 'Password',
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              hidePassword = !hidePassword;
                            });
                          },
                          icon: Icon(hidePassword
                              ? Icons.lock
                              : Icons.remove_red_eye))),
                ),
              ),

              SizedBox(height: 20,),

              // repeat password
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                height: 50,
                child: TextField(
                  // controller: controller,
                  obscureText: hidePassword,
                  decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      hintText: 'Retype Password',
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              hidePassword = !hidePassword;
                            });
                          },
                          icon: Icon(hidePassword
                              ? Icons.lock
                              : Icons.remove_red_eye))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
