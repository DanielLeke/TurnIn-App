import 'package:flutter/material.dart';
import 'package:turninapp/students/views/nosubmissions.dart';

class StudentsPage extends StatelessWidget {
  const StudentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: studentsAppBar(),
      body: AlertDialog(
        title: Text(
          "New Submission",
          style: TextStyle(
            fontFamily: 'Sans Serif',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        content: SubmisssionForm(),
      ),
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

class SubmisssionForm extends StatelessWidget {
  const SubmisssionForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [SubmissionTitle(), SubmissionContent()],
      ),
    );
  }
}

class SubmissionContent extends StatelessWidget {
  const SubmissionContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}

class SubmissionTitle extends StatelessWidget {
  const SubmissionTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Title", style: TextStyle(fontFamily: 'Sans Serif', fontSize: 18)),
        SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(border: OutlineInputBorder()),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Title is required';
            }
            return null;
          },
          onSaved: (newValue) {},
        ),
      ],
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
