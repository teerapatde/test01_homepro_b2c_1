import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/services.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int pageLength = 3;
  int currentIndexPage = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Material(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: PageView(
                  onPageChanged: (pageNo) {
                    //print('PAGE : ' + pageNo.toString());
                    setState(() {
                      currentIndexPage = pageNo;
                    });
                  },
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      'asset/img/introScreen/intro1.jpg',
                                      fit: BoxFit.fill,
                                      height: double.infinity,
                                      width: double.infinity,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'asset/img/introScreen/intro2.jpg',
                                fit: BoxFit.fill,
                                height: double.infinity,
                                width: double.infinity,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'asset/img/introScreen/intro3.jpg',
                                fit: BoxFit.fill,
                                height: double.infinity,
                                width: double.infinity,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 30,
                color: Colors.white,
                alignment: Alignment.center,
                child: DotsIndicator(
                  dotsCount: pageLength,
                  position: currentIndexPage,
                ),
              ),
              Container(
                height: 140,
                padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      //color: Colors.orange,
                      //padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      width: 250,
                      height: 52.5,
                      child: FlatButton(
                        color: Colors.blue[800],
                        child: Text(
                          'GET STARTED',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        shape: StadiumBorder(),
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed('/main');
                        },
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              //color: Colors.green,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                      '☑ By click GET STARTED, you agree to the HomePro Privacy Policy.',
                                      style: TextStyle(
                                        fontSize: 10,
                                      )),
                                  Text(
                                    'Copyright © 2019 Home Product Center Public Company Limited.',
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
