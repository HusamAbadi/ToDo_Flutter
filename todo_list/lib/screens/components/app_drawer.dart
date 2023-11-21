import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: const Text("Side List"),
            backgroundColor: Colors.teal,
          ),
          const ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text("Calender"),
          ),
          const Divider(
            height: 20,
            thickness: 5,
          ),
          const ListTile(
            leading: Icon(Icons.alarm),
            title: Text("Alarm"),
          ),
          const Divider(
            height: 20,
            thickness: 5,
          ),
        ],
      ),
    );
  }
}
