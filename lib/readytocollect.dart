import 'package:flutter/material.dart';
class ReadyToCollect extends StatefulWidget {
  @override
  _ReadyToCollectState createState() => _ReadyToCollectState();
}

class _ReadyToCollectState extends State<ReadyToCollect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("READY TO COLLECT"),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
