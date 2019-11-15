import 'package:flutter/material.dart';

class user_setting_list_function extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 1000,
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      //color: Colors.tealAccent,
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Container(
            //color: Colors.pink,
            height: 85,
            alignment: Alignment.topCenter,
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 70,
                    //color: Colors.yellow,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff8C79ED),
                            ),
                            width: 40,
                            height: 40,
                            margin: EdgeInsets.fromLTRB(15, 10, 10, 10),
                            child: Icon(
                              Icons.location_on,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              //color: Colors.pink,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                    child: Text(
                                      'Address',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff222222),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                    child: Text(
                                      'Setting address of user',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffBDBDBD),
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
                  ),
                )
              ],
            ),
          ),
          Container(
            //color: Colors.pink,
            height: 85,
            alignment: Alignment.topCenter,
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 70,
                    //color: Colors.yellow,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffF468B7),
                            ),
                            width: 40,
                            height: 40,
                            margin: EdgeInsets.fromLTRB(15, 10, 10, 10),
                            child: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              //color: Colors.pink,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                    child: Text(
                                      'Security',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff222222),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                    child: Text(
                                      'Setting address of user',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffBDBDBD),
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
                  ),
                )
              ],
            ),
          ),
          Container(
            //color: Colors.pink,
            height: 85,
            alignment: Alignment.topCenter,
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 70,
                    //color: Colors.yellow,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffFEC85C),
                            ),
                            width: 40,
                            height: 40,
                            margin: EdgeInsets.fromLTRB(15, 10, 10, 10),
                            child: Icon(
                              Icons.settings_applications,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              //color: Colors.pink,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                    child: Text(
                                      'General',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff222222),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                    child: Text(
                                      'Setting address of user',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffBDBDBD),
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
                  ),
                )
              ],
            ),
          ),
          Container(
            //color: Colors.pink,
            height: 85,
            alignment: Alignment.topCenter,
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 70,
                    //color: Colors.yellow,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff5FD0D3),
                            ),
                            width: 40,
                            height: 40,
                            margin: EdgeInsets.fromLTRB(15, 10, 10, 10),
                            child: Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              //color: Colors.pink,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                    child: Text(
                                      'Notifications',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff222222),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                    child: Text(
                                      'Setting address of user',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffBDBDBD),
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
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
