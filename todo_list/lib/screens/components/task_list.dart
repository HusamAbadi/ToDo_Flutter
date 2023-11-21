import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/providers/task_provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    final taskProvider = context.watch<TaskProvider>();
    return Expanded(
        flex: 5,
        child: Container(
          child: ListView.builder(
            //{.builder} Because The Data Changes Not fixed
            itemCount: taskProvider.tasks.length,
            itemBuilder: (context, index) {
              return Container(
                child: Dismissible(
                  key: Key(index.toString()),
                  background: Container(
                    color: Theme.of(context).colorScheme.error,
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(right: 20),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) {
                    taskProvider.removeTask(index);
                  },
                  child: ListTile(
                    title: Text(
                      taskProvider.tasks[index].title,
                      style: const TextStyle(
                          // color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    trailing: Image(
                      image: taskProvider.tasks[index].completed
                          ? const AssetImage('assets/icons/Completed.png')
                          : const AssetImage('assets/icons/NotCompleted.png'),
                    ),
                    onTap: () {
                      taskProvider.makeTaskCompleted(index);
                    },
                  ),
                ),
              );
            },
            padding: const EdgeInsets.only(left: 16, right: 16),
          ),
        ));
  }
}
