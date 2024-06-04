import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:todoapp_normal/constants/colors.dart';
import 'package:todoapp_normal/constants/fonts.dart';
import 'package:todoapp_normal/data/database.dart';
import 'package:todoapp_normal/pages_UI/home_page_UI/new_task_page.dart';
import 'package:todoapp_normal/pages_UI/home_page_UI/widgets/to_do_box.dart';

import 'widgets/fab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _myBox = Hive.box('boxHive');
  ToDoDataBase db = ToDoDataBase();

  @override
  void initState() {
    // if the first time - db
    if (_myBox.get('TODOLIST') == null) {
      db.createInitialData();
    } else {
      db.loadData();
    }
    super.initState();
  }

  // checkbox was tapped
  void onChanged(bool? value, int index) {
    setState(() {
      db.toDoList[index][1] = !db.toDoList[index][1];
    });
    db.updateDb();
  }

  // new task create
  void createNewTask() async {
    final TextEditingController? newTask = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NewTask(),
      ),
    );
    setState(() {
      if (newTask == null) {
        db.toDoList.add(['', false]);
      } else {
        db.toDoList.add([newTask.text, false]);
      }
    });
    db.updateDb();
  }

  // task delete
  void deleteTask(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateDb();
  }

  void logout() {
    // go to login page
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backPers,
      appBar: AppBar(
        backgroundColor: backPers,
        title: const Text(
          'Список дел',
          style: laregeText,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: logout,
              icon: const Icon(
                Icons.login,
                size: 30,
              ),
            ),
          )
        ],
      ),
      // FAB
      floatingActionButton: Fab(
        onPressed: createNewTask,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: db.toDoList.length,
          itemBuilder: (context, index) {
            return ToDoBox(
              taskName: db.toDoList[index][0],
              taskCompleted: db.toDoList[index][1],
              onChanged: (value) => onChanged(value, index),
              deleteTask: (context) => deleteTask(index),
            );
          },
        ),
      ),
    );
  }
}
