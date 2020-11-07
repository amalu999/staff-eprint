import 'package:flutter/material.dart';
class ToPrint extends StatefulWidget {
  @override
  _ToPrintState createState() => _ToPrintState();
}

class _ToPrintState extends State<ToPrint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TO_PRINT"),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
