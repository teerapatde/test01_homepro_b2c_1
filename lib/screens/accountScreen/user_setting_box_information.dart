import 'package:flutter/material.dart';

class user_setting_box_information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 180,
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              //color: Colors.yellow,
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue[800],
                          ),
                          child: Container(
                            height: 173,
                            child: Column(
                              // -- Content of Box Information
                              children: <Widget>[
                                Expanded(
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          //color: Colors.orangeAccent,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'asset/img/iconAndLogo/icon_google.jpg'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        width: 50,
                                        height: 50,
                                        margin:
                                            EdgeInsets.fromLTRB(15, 15, 10, 15),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Expanded(
                                        child: Container(
                                          //color: Colors.yellowAccent,
                                          child: Column(
                                            children: <Widget>[
                                              Expanded(
                                                child: Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 20, 0, 0),
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  //color: Colors.green,
                                                  child: Text(
                                                    'Firstname Lastname',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 22),
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  //color: Colors.purpleAccent,
                                                  child: Text(
                                                    'homepro@homepro.co.th',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          //color: Colors.lightGreen,
                                          child: Column(
                                            children: <Widget>[
                                              Expanded(
                                                child: Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 10, 0, 0),
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    '821',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 28),
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    'Buy',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          //color: Colors.indigo,
                                          child: Column(
                                            children: <Widget>[
                                              Expanded(
                                                child: Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 10, 0, 0),
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    '5',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 28),
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    'Like',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          //color: Colors.pink,
                                          child: Column(
                                            children: <Widget>[
                                              Expanded(
                                                child: Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 10, 0, 0),
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    '0',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 28),
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    'Cancel',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          //color: Colors.tealAccent,
                                          child: Column(
                                            children: <Widget>[
                                              Expanded(
                                                child: Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 10, 0, 0),
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    '76',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 28),
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    'Coupons',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
