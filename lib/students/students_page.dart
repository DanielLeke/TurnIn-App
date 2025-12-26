import 'package:flutter/material.dart';

class StudentsPage extends StatelessWidget {
  const StudentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: studentsAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(children: [CreateSubmissionBtn()]),
      ),
    );
  }

  AppBar studentsAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text('My Submissions'),
      leading: Icon(Icons.insert_drive_file, color: Colors.blue),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.logout, color: Colors.grey),
        ),
      ],
    );
  }
}

class CreateSubmissionBtn extends StatelessWidget {
  const CreateSubmissionBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
    onPressed: () {}, 
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5)
      )
    ),
    child: Text(
      "+ New Submission",
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold
      ),
    ));
  }
}
