import 'package:flutter/material.dart';

class FlashSaleScreen extends StatefulWidget {
  @override
  _FlashSaleScreenState createState() => _FlashSaleScreenState();
}

class _FlashSaleScreenState extends State<FlashSaleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Flash Sale'),
      ),
      body: Center(
        child: Text('Flash Sale Screen'),
      ),
    );
  }
}
