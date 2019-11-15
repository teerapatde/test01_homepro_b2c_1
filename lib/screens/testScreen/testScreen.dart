import 'package:flutter/material.dart';
import 'package:homepro_b2c_1/screens/testScreen/testBarcodeScanner.dart';
import 'package:homepro_b2c_1/screens/testScreen/testCardio.dart';
import 'package:homepro_b2c_1/screens/testScreen/testCreditCard.dart';
import 'package:homepro_b2c_1/screens/testScreen/testStagger.dart';
import 'package:homepro_b2c_1/screens/testScreen/testAnimatedList.dart';
import 'package:homepro_b2c_1/screens/testScreen/testBasicHero.dart';
import 'package:homepro_b2c_1/screens/testScreen/testEasingAnimationWidget.dart';
import 'package:homepro_b2c_1/screens/testScreen/testFade.dart';
import 'package:homepro_b2c_1/screens/testScreen/testHero.dart';
import 'package:homepro_b2c_1/screens/testScreen/testJsonRandomUser1.dart';
import 'package:homepro_b2c_1/screens/testScreen/testNewsApi1.dart';
import 'package:homepro_b2c_1/screens/testScreen/testSpinner.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TEST'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: 250,
              //color: Colors.red,
              child: RaisedButton(
                child: Text('TEST Barcode Scanner'),
                onPressed: () {
                  print('Click TEST Barcode Scanner');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TestBarcodeScannerScreen()),
                  );
                },
              ),
            ),
            Container(
              width: 250,
              //color: Colors.red,
              child: RaisedButton(
                child: Text('TEST Scan Credit Card (Card io)'),
                onPressed: () {
                  print('Click TEST Scan Credit Card (Card io)');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestCardIoScreen()),
                  );
                },
              ),
            ),
            Container(
              width: 250,
              //color: Colors.red,
              child: RaisedButton(
                child: Text('TEST Credit Card (Form)'),
                onPressed: () {
                  print('Click TEST Credit Card (Form)');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TestCreditCardForm()),
                  );
                },
              ),
            ),
            Container(
              width: 250,
              //color: Colors.red,
              child: RaisedButton(
                child: Text('TEST JSON Random User 1'),
                onPressed: () {
                  print('Click TEST JSON Random User 1');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TestJsonRandomUser1Screen()),
                  );
                },
              ),
            ),
            Container(
              width: 250,
              //color: Colors.red,
              child: RaisedButton(
                child: Text('TEST JSON News Api 1'),
                onPressed: () {
                  print('Click TEST JSON News Api 1ixx');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TestNewsApi1Screen()),
                  );
                },
              ),
            ),
            Container(
              width: 250,
              //color: Colors.red,
              child: Builder(
                builder: (context) {
                  return RaisedButton(
                    child: Text('TEST SnackBar'),
                    onPressed: () {
                      Scaffold.of(context).showSnackBar(
                        SnackBar(
                          content: Text('SnackBar 1 Second'),
                          action: SnackBarAction(
                            label: 'Close',
                            onPressed: () {
                              SnackBarClosedReason.dismiss;
                            },
                          ),
                          duration: Duration(seconds: 1),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Container(
              width: 250,
              //color: Colors.red,
              child: RaisedButton(
                child: Text('TEST AnimatedList'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestAnimatedList()),
                  );
                },
              ),
            ),
            Container(
              width: 250,
              //color: Colors.red,
              child: RaisedButton(
                child: Text('TEST Stagger'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StaggerDemo()),
                  );
                },
              ),
            ),
            Container(
              width: 250,
              //color: Colors.red,
              child: RaisedButton(
                child: Text('TEST Spinner'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestSpinner()),
                  );
                },
              ),
            ),
            Container(
              width: 250,
              //color: Colors.red,
              child: RaisedButton(
                child: Text('TEST Fade'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestFade()),
                  );
                },
              ),
            ),
            Container(
              width: 250,
              //color: Colors.red,
              child: RaisedButton(
                child: Text('TEST Basic Hero'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BasicHeroAnimation()),
                  );
                },
              ),
            ),
            Container(
              width: 250,
              //color: Colors.red,
              child: RaisedButton(
                child: Text('TEST Hero'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HeroAnimation()),
                  );
                },
              ),
            ),
            Container(
              width: 250,
              //color: Colors.red,
              child: RaisedButton(
                child: Text('TEST Easing Animation Widget'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EasingAnimationWidget()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
