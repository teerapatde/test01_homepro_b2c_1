import 'package:flutter/material.dart';

class user_setting_box_function extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.yellow,
      height: 100,
      alignment: Alignment.center,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 100,
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              //color: Colors.orange,
              alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      //color: Colors.pink,
                      alignment: Alignment.center,
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffF6F5F8),
                            ),
                            width: 50,
                            height: 50,
                            child: Icon(
                              Icons.monetization_on,
                              color: Color(0xff42526F),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Wallet',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xff42526F),
                              ),
                            ),
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      //color: Colors.pink,
                      alignment: Alignment.center,
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffF6F5F8),
                            ),
                            width: 50,
                            height: 50,
                            child: Icon(
                              Icons.card_giftcard,
                              color: Color(0xff42526F),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Delivery',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xff42526F),
                              ),
                            ),
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      //color: Colors.pink,
                      alignment: Alignment.center,
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffF6F5F8),
                            ),
                            width: 50,
                            height: 50,
                            child: Icon(
                              Icons.message,
                              color: Color(0xff42526F),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Message',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xff42526F),
                              ),
                            ),
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      //color: Colors.pink,
                      alignment: Alignment.center,
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffF6F5F8),
                            ),
                            width: 50,
                            height: 50,
                            child: Icon(
                              Icons.phone_in_talk,
                              color: Color(0xff42526F),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Support',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xff42526F),
                              ),
                            ),
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                          ),
                        ],
                      ),
                    ),
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
