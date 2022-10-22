import 'package:flutter/cupertino.dart';
import 'package:finalproject/task.dart';

class Todo extends ChangeNotifier {
  List<Task> tasks = [];

  addTaskToList(String title,String details,String img) {
    Task t = Task(title, details,img);
    tasks.add(t);
    notifyListeners(); // Notify UI (Widget)
  }
}
