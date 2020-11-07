import 'package:flutter/material.dart';
class feedbackSent extends StatefulWidget {
  @override
  _feedbackSentState createState() => _feedbackSentState();
}

class _feedbackSentState extends State<feedbackSent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FEEDBACK"),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
