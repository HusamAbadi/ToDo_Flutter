import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskProvider extends ChangeNotifier {
  final List<Task> _tasks = [
    // (_) means the variable is Private
  ];

  List<Task> get tasks {
    return _tasks;
  }

  void addTask(task) {
    _tasks.add(task);
    notifyListeners();
  }

  void removeTask(index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  void makeTaskCompleted(index) {
    _tasks[index].completed = !_tasks[index].completed;
    notifyListeners();
  }
}
