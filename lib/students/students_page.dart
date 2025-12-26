import 'package:flutter/material.dart';

class StudentsPage extends StatelessWidget {
  const StudentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: studentsAppBar(),
      body: ListView(),
    );
  }

  AppBar studentsAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text('My Submissions'),
      leading: Icon(Icons.insert_drive_file, color: Colors.blue,),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.logout, color: Colors.grey[100],))
      ],
    );
  }
}

