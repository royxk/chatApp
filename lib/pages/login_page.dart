import 'package:chatapp/components/my_button.dart';
import 'package:chatapp/components/my_text_field.dart';
import 'package:chatapp/services/auth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  final void Function() onPressed;

  const LoginPage({super.key, required this.onPressed});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // email textfield
  final email = TextEditingController();

  // password textfield
  final password = TextEditingController();

  // sign in button
  void signIn() async {
    final auth = Provider.of<AuthService>(context, listen: false);

    try {
      await auth.signInWithEmailandPassword(
        email.text,
        password.text,
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
    }
  }

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
                Icon(Icons.chat, size: 100, color: Colors.black),

                const SizedBox(height: 50),
                // welcome text
                Text(
                  'Welcome to Chat App',
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
                    controller: password,
                    hintText: 'password',
                    obscureText: true),

                const SizedBox(height: 20),

                // bottom row
                Container(
                  child: MyButton(
                    onTap: signIn,
                    text: 'Login',
                  ),
                ),

                const SizedBox(height: 20),

                // register button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account?'),
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
  }
}
