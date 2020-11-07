import 'package:flutter/material.dart';
class PriceChange extends StatefulWidget {
  @override
  _PriceChangeState createState() => _PriceChangeState();
}

class _PriceChangeState extends State<PriceChange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PRICE CHANGE"),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
