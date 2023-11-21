import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/task.dart';
import '../../providers/task_provider.dart';

class TaskForm extends StatefulWidget {
  const TaskForm({super.key});

  @override
  State<TaskForm> createState() => _TaskFormState();
}

class _TaskFormState extends State<TaskForm> {
  final _formKey = GlobalKey<FormState>();
  final taskTitle = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Stack(
        clipBehavior: Clip.none,
        children: [
          const Positioned(
            right: -40,
            top: -40,
            child: CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(Icons.close),
            ),
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: taskTitle,
                    decoration:
                        const InputDecoration(hintText: "Add Task title: "),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextButton(
                    child: const Text(
                      "Add Task",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                          color: Colors.teal),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.of(context).pop();
                        //Navigator Line is To Return To The Main Page
                        context.read<TaskProvider>().addTask(
                              Task(
                                title: taskTitle.text,
                                completed: false,
                              ),
                            );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
