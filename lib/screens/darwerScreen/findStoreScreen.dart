import 'package:flutter/material.dart';

class FindStoreScreen extends StatefulWidget {
  @override
  _FindStoreScreenState createState() => _FindStoreScreenState();
}

class _FindStoreScreenState extends State<FindStoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Find Store'),
      ),
      body: Center(
        child: Text('Find Store Screen'),
      ),
    );
  }
}
