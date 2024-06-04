import 'package:flutter/material.dart';
import 'package:todoapp_normal/pages_UI/regist_auth_page_UI/login_page.dart';
import 'package:todoapp_normal/pages_UI/regist_auth_page_UI/logup_page.dart';

class LoginOrLogup extends StatefulWidget {
  const LoginOrLogup({super.key});

  @override
  State<LoginOrLogup> createState() => _LoginOrLogupState();
}

class _LoginOrLogupState extends State<LoginOrLogup> {
  // initially, show login page
  bool showLoginPage = true;

  // route between login and logup page
  void rotePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LogUpPage(login: rotePages);
    } else {
      return LogInPage(logup: rotePages);
    }
  }
}
