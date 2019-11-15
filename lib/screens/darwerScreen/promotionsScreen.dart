import 'package:flutter/material.dart';

class PromotionsScreen extends StatefulWidget {
  @override
  _PromotionsScreenState createState() => _PromotionsScreenState();
}

class _PromotionsScreenState extends State<PromotionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Promotions'),
      ),
      body: Center(
        child: Text('Promotions Screen'),
      ),
    );
  }
}
