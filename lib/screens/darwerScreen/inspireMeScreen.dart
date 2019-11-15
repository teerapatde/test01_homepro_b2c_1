import 'package:flutter/material.dart';

class InspireMeScreen extends StatefulWidget {
  @override
  _InspireMeScreenState createState() => _InspireMeScreenState();
}

class _InspireMeScreenState extends State<InspireMeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Inspire Me'),
      ),
      body: Center(
        child: Text('Inspire Me Screen'),
      ),
    );
  }
}
