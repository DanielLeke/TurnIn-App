import 'package:flutter/material.dart';
import 'package:turninapp/students/views/nosubmissions.dart';

class StudentsPage extends StatelessWidget {
  const StudentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: studentsAppBar(),
      body: Center(
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [SubmissionTitle(), SubmissionContent(), SubmitBtn()],
      ),
    );
  }
}

class SubmissionContent extends StatelessWidget {
  const SubmissionContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Content",
          style: TextStyle(fontFamily: 'Sans Serif', fontSize: 18),
        ),
        SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(border: OutlineInputBorder()),
          keyboardType: TextInputType.multiline,
          maxLines: 10,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Content is required';
            }
            return null;
          },
          onSaved: (newValue) {},
        ),
      ],
    );
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

class SubmitBtn extends StatelessWidget {
  const SubmitBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue[700],
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: Text(
          "Submit",
          style: TextStyle(
            letterSpacing: 0.7,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 17,
            fontFamily: 'Sans Serif',
          ),
        ),
      ),
    );
  }
}

class CancelBtn extends StatelessWidget {
  const CancelBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[100],
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: Text(
          "Cancel",
          style: TextStyle(
            letterSpacing: 0.7,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 17,
            fontFamily: 'Sans Serif',
          ),
        ),
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
