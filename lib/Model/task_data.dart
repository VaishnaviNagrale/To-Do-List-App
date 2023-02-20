import 'package:flutter/foundation.dart';
import 'package:to_do_app2/Model/task.dart';

class TaskData extends ChangeNotifier {

  List<Task> tasks = [
    Task(name: 'abs'),
    Task(name: 'nnn'),
    Task(name: 'jj'),
  ];
  int get taskCount {
    return tasks.length;
  }
  void addTask(String newTaskTitle){
    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }
  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
