import 'package:flutter/material.dart';

class StudentsPage extends StatelessWidget {
  const StudentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: studentsAppBar(),
      body: NoSubmissionsView(),
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

class NoSubmissionsView extends StatelessWidget {
  const NoSubmissionsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [CreateSubmissionBtn(), NoSubmissionsCard()]),
      ),
    );
  }
}

class NoSubmissionsCard extends StatelessWidget {
  const NoSubmissionsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Icon(Icons.description_outlined, color: Colors.grey, size: 52),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                "No submissions yet. Create your first submission!",
                style: TextStyle(color: Colors.grey, fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CreateSubmissionBtn extends StatelessWidget {
  const CreateSubmissionBtn({super.key});

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
          "+ New Submission",
          style: TextStyle(
            letterSpacing: 0.7,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
