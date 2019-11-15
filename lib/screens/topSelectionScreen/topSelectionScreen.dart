import 'package:flutter/material.dart';

class TopSelectionScreen extends StatefulWidget {
  @override
  _TopSelectionScreenState createState() => _TopSelectionScreenState();
}

class _TopSelectionScreenState extends State<TopSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Top Selection'),
      ),
      body: Center(
        child: Text('Top Selection Screen'),
      ),
    );
  }
}
