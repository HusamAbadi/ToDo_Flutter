import 'package:flutter/material.dart';
import 'package:todo_list/screens/components/task_list.dart';
import 'package:todo_list/screens/components/welcome.dart';

// import 'add_task_button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Welcome(name: 'Human', avatar: 'assets/icons/heart.png'),
        Divider(height: 50, thickness: 5),
        TaskList(),
      ],
    );
  }
}
