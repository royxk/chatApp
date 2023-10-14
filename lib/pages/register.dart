import 'package:chatapp/components/my_button.dart';
import 'package:chatapp/components/my_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function() onPressed;

  const RegisterPage({super.key, required this.onPressed});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // email textfield
  final email = TextEditingController();

  // password textfield
  final passwords = TextEditingController();

  // confirm password textfield
  final confirmpasswords = TextEditingController();

  // register button
  void signUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 150),
                // logo
                const Icon(Icons.people, size: 100, color: Colors.black),

                const SizedBox(height: 50),
                // welcome text
                const Text(
                  'Let\'s get started',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 50),

                // email textfield
                MyTextField(
                    controller: email, hintText: 'email', obscureText: false),

                const SizedBox(height: 20),

                // password textfield
                MyTextField(
                    controller: passwords,
                    hintText: 'password',
                    obscureText: true),

                const SizedBox(height: 20),

                // password textfield
                MyTextField(
                    controller: confirmpasswords,
                    hintText: 'confirm password',
                    obscureText: true),

                const SizedBox(height: 20),

                // bottom row
                MyButton(
                  onTap: () {},
                  text: 'Sign Up',
                ),

                const SizedBox(height: 20),

                // register button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account?'),
                    TextButton(
                      onPressed: widget.onPressed,
                      child: const Text('Register now',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
