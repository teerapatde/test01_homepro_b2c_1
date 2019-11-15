import 'package:flutter/material.dart';

class ConnectHomeCardScreen extends StatefulWidget {
  @override
  _ConnectHomeCardScreenState createState() => _ConnectHomeCardScreenState();
}

class _ConnectHomeCardScreenState extends State<ConnectHomeCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connect HomeCard'),
        backgroundColor: Colors.blue[800],
      ),
      body: Center(
        child: Text('Connect HomeCard'),
      ),
    );
  }
}
