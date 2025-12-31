import 'package:flutter/material.dart';

class ReviewerPage extends StatelessWidget {
  const ReviewerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: reviewerAppBar(),
    );
  }

  AppBar reviewerAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text('Reviewer Dashboard'),
      leading: Icon(Icons.fact_check, color: Colors.blue[700]),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.logout, color: Colors.grey),
        ),
      ],
    );
  }
}
