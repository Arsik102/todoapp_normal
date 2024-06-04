import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todoapp_normal/firebase_options.dart';
import 'package:todoapp_normal/pages_UI/regist_auth_page_UI/auth_page.dart';

void main() async {
  // init the hive db
  await Hive.initFlutter();
  await Hive.openBox('boxHive');
  // init the Firebase db
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ToDoAppNormal());
}

class ToDoAppNormal extends StatelessWidget {
  const ToDoAppNormal({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App Normal',
      home: AuthPage(),
    );
  }
}
