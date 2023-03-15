import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: const Text(
          'Agenda Everyday',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 136, 34, 27),
        leading: const Icon(Icons.person_4),
        actions: const [
          Icon(Icons.search),
        ],
        toolbarHeight: 70,
        actionsIconTheme: const IconThemeData(size: 30),
      ),
   drawer: Drawer(
  backgroundColor: const Color.fromARGB(255, 3, 57, 102),
  width: 250,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 40),
      ListTile(
        title: const Text(
          'Dashboard',
          style: TextStyle(
            fontSize: 33,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: const Icon(Icons.dashboard_customize, color: Colors.white),
        onTap: () => Navigator.of(context).pop(),
      ),
      const Divider(color: Colors.white, thickness: 1),
      ListTile(
        title: const Text(
          'Calendar',
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),
        ),
        trailing: const Icon(Icons.event_rounded, color: Colors.white),
        onTap: () => Navigator.of(context).pop(),
      ),
      const Divider(color: Colors.white, thickness: 1),
      ListTile(
        title: const Text(
          'Notes',
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),
        ),
        trailing: const Icon(Icons.note_rounded, color: Colors.white),
        onTap: () => Navigator.of(context).pop(),
      ),
      const Divider(color: Colors.white, thickness: 1),
      ListTile(
        title: const Text(
          'Priorities',
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),
        ),
        trailing: const Icon(Icons.priority_high_rounded, color: Colors.white),
        onTap: () => Navigator.of(context).pop(),
      ),
      const Divider(color: Colors.white, thickness: 1),
      ListTile(
        title: const Text(
          'Notifications',
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),
        ),
        trailing: const Icon(Icons.notifications_rounded, color: Colors.white),
        onTap: () => Navigator.of(context).pop(),
      ),
      const Divider(color: Colors.white, thickness: 1),
      ListTile(
        title: const Text(
          'History',
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),
        ),
        trailing: const Icon(Icons.history_rounded, color: Colors.white),
        onTap: () => Navigator.of(context).pop(),
      ),
      const Divider(color: Colors.white, thickness: 1),
      ListTile(
        title: const Text(
          'Settings',
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),
        ),
        trailing: const Icon(Icons.settings_rounded, color: Colors.white),
        onTap: () => Navigator.of(context).pop(),
      ),
      const Divider(color: Colors.white, thickness: 1),
      Expanded(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: ListTile(
            title: const Text(
              'Logout',
              style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
            trailing: const Icon(Icons.logout_rounded, size: 36, color: Colors.white),
            onTap: () => Navigator.of(context).pop(),
          ),
        ),
      ),
    ],
  ),
),


      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_task_rounded), label: 'Task Lists'),
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'Reminders'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        ],
        backgroundColor: const Color.fromARGB(255, 141, 47, 40),
      ),
      body: Column(
        children: const <Widget>[
          Text('Welcome to My App!'),
          SizedBox(height: 16),
          Text('This is the Home page.'),
        ],
      ),
    );
  }
}
