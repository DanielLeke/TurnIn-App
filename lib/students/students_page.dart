import 'package:flutter/material.dart';
import 'package:turninapp/students/views/submissions.dart';
import 'package:turninapp/students/views/create_submission.dart';
import 'package:turninapp/students/views/nosubmissions.dart';

class StudentsPage extends StatelessWidget {
  const StudentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: studentsAppBar(),
      body: SubmissionsView(),
    );
  }

  AppBar studentsAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text('My Submissions'),
      leading: Icon(Icons.description_outlined, color: Colors.blue[700]),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.logout, color: Colors.grey),
        ),
      ],
    );
  }
}

class SubmissionsView extends StatelessWidget {
  const SubmissionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [CreateSubmissionBtn(), SizedBox(height: 20), Submissions()],
      ),
    );
  }
}

class MakeSubmissionView extends StatelessWidget {
  const MakeSubmissionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AlertDialog(
        title: Text(
          "New Submission",
          style: TextStyle(
            fontFamily: 'Sans Serif',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        content: SizedBox(height: 600, width: 850, child: SubmisssionForm()),
      ),
    );
  }
}

class NoSubmissionsView extends StatelessWidget {
  const NoSubmissionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [CreateSubmissionBtn(), NoSubmissionsCard()],
        ),
      ),
    );
  }
}
