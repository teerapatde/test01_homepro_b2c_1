import 'package:flutter/material.dart';

class RegisterHomeCardScreen extends StatefulWidget {
  @override
  _RegisterHomeCardScreenState createState() => _RegisterHomeCardScreenState();
}

class _RegisterHomeCardScreenState extends State<RegisterHomeCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register HomeCard'),
        backgroundColor: Colors.blue[800],
      ),
      body: Center(
        child: Text('Register HomeCard'),
      ),
    );
  }
}
