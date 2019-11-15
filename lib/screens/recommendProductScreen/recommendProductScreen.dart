import 'package:flutter/material.dart';

class RecommendProductScreen extends StatefulWidget {
  @override
  _RecommendProductScreenState createState() => _RecommendProductScreenState();
}

class _RecommendProductScreenState extends State<RecommendProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Recommend Product'),
      ),
      body: Center(
        child: Text('Recommend Product Screen'),
      ),
    );
  }
}
