import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestFade extends StatefulWidget {
  @override
  _TestFadeState createState() => _TestFadeState();
}

class _TestFadeState extends State<TestFade> {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TEST Fade'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedOpacity(
                opacity: opacityLevel,
                duration: Duration(milliseconds: 500),
                child: FlutterLogo(
                  size: 100,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('Fade'),
                onPressed: _changeOpacity,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
