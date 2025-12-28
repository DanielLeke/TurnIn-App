import 'package:flutter/material.dart';

class SubmisssionForm extends StatelessWidget {
  const SubmisssionForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SubmissionTitle(),
          SubmissionContent(),
          SubmitBtn(),
          CancelBtn(),
        ],
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
            fontWeight: FontWeight.bold,
            fontSize: 17,
            fontFamily: 'Sans Serif',
          ),
        ),
      ),
    );
  }
}
