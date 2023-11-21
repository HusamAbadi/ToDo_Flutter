import 'package:flutter/material.dart';
import 'package:todo_list/screens/components/task_form.dart';

class AddTaskButton extends StatelessWidget {
  const AddTaskButton({super.key});

  // const AddTaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => showDialog(
        builder: (BuildContext context) {
          return const TaskForm();
        },
        context: context,
      ),
      backgroundColor: Colors.teal,
      child: const Icon(Icons.add),
    );
  }
}
