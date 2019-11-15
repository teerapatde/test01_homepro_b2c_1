import 'package:flutter/material.dart';

class ShopByBrandScreen extends StatefulWidget {
  @override
  _ShopByBrandScreenState createState() => _ShopByBrandScreenState();
}

class _ShopByBrandScreenState extends State<ShopByBrandScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Shop by Brand'),
      ),
      body: Center(
        child: Text('Shop by Brand Screen'),
      ),
    );
  }
}
