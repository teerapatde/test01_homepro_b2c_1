import 'package:flutter/material.dart';

class HomeServicesScreen extends StatefulWidget {
  @override
  _HomeServicesScreenState createState() => _HomeServicesScreenState();
}

class _HomeServicesScreenState extends State<HomeServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Home Services'),
      ),
      body: Center(
        child: Text('Home Services Screen'),
      ),
    );
  }
}
