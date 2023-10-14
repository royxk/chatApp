import 'package:chatapp/pages/login_page.dart';
import 'package:chatapp/pages/register.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  // show login page by default
  bool showLoginPage = true;
  bool check = true;

  @override

  // toggle between login and register page
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
      check = !check;
    });
  }

  Widget build(BuildContext context) {
    if (showLoginPage) {
      print(check);
      return LoginPage(onPressed: togglePages);
    } else {
      print(check);
      return RegisterPage(onPressed: togglePages);
    }
  }
}
