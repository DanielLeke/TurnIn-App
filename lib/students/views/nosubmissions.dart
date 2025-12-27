import 'package:flutter/material.dart';

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
