import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestShowItem3 extends StatelessWidget {
  final String title, detail;

  const TestShowItem3({Key key, this.title, this.detail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              detail,
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
