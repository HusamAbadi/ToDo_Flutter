import 'package:flutter/material.dart';
import 'package:todo_list/screens/components/add_task_button.dart';
import 'package:todo_list/screens/components/app_drawer.dart';
import 'components/body.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My List"),
        backgroundColor: Colors.teal,
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (_) => [
              const PopupMenuItem(child: Text("Show Completed Tasks")),
              const PopupMenuItem(child: Text("Show All Tasks")),
            ],
          )
        ],
      ),
      drawer: const AppDrawer(),
      body: const Body(),
      floatingActionButton: const AddTaskButton(),
    );
  }
}
