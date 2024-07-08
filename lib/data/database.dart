import 'package:hive/hive.dart';

class ToDoDataBase{
  List toDoList = [];

  //reference the box
  final _myBox = Hive.box('myBox');

  // run this method in case of 1st time opening the app
void createInitialData() {
  toDoList = [
    ["Make Tutorial", false],
    ["Make Tutorial", false],
  ];
}
// load the data from db
  void loadData(){
  toDoList = _myBox.get("TOODLIST");
  }
//   update the db
  void updateDataBase(){
  _myBox.put("TODOLIST", toDoList);
  }
}