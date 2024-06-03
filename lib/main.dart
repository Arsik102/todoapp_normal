import 'package:flutter/material.dart';
import 'package:todoapp_normal/pages_UI/regist_auth_page_UI/login_page.dart';
import 'package:todoapp_normal/pages_UI/regist_auth_page_UI/logup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      home: LogInPage(),
    );
  }
}
