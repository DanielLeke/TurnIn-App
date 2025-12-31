import 'package:flutter/material.dart';

class Submissions extends StatelessWidget {
  const Submissions({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: ListView(children: [Submission()]));
  }
}

class Submission extends StatelessWidget {
  const Submission({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(children: [SubmissionContent(), SubmissionStatus()]),
    );
  }
}

class SubmissionStatus extends StatelessWidget {
  const SubmissionStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Icon(Icons.schedule, color: Colors.amber),
          SizedBox(width: 10),
          Text(
            'Pending Review',
            style: TextStyle(color: Colors.amber, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class SubmissionContent extends StatelessWidget {
  const SubmissionContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Test Submission",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontFamily: 'Sans Serif',
          fontSize: 20,
        ),
      ),
      subtitle: Text(
        'Hello there. This is a test submission. Hopefully, I can use this to see how the ui will look like.',
        style: TextStyle(color: Colors.grey, fontSize: 16),
      ),
    );
  }
}
