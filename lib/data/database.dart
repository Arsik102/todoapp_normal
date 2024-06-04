import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference the hive box
  final _myBox = Hive.box('boxHive');

  // default list of todo tasks
  void createInitialData() {
    toDoList = [
      ['Сделать видео', false],
      ['Пойти в зал', false],
      ['Почитать документацию', false],
    ];
  }

  // load the data from db
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  // update the db
  void updateDb() {
    _myBox.put('TODOLIST', toDoList);
  }
}
