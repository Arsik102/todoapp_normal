import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todoapp_normal/pages_UI/home_page_UI/home_page.dart';
import 'package:todoapp_normal/pages_UI/regist_auth_page_UI/login_or_logup_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // user is logged in
          if (snapshot.hasData) {
            return const HomePage();
          }

          // user is Not logged in
          else {
            return const LoginOrLogup();
          }
        },
      ),
    );
  }
}
