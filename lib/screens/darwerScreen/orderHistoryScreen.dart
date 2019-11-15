import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderHistoryScreen extends StatefulWidget {
  @override
  _OrderHistoryScreenState createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
  int cntOrder = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Order History'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: cntOrder,
                itemBuilder: (BuildContext context, int index) {
                  if (index + 1 < cntOrder) {
                    return Container(
                      //color: Colors.red,
                      height: 190,
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      height: 30,
                                      //color: Colors.yellow,
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              //color: Colors.orange,
                                              child: Text(
                                                'หมายเลขคำสั่งซื้อ',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[500],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.centerRight,
                                              //color: Colors.blue,
                                              child: Text(
                                                'EX000' +
                                                    (index + 1).toString(),
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[1000],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      height: 30,
                                      //color: Colors.yellow,
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              //color: Colors.orange,
                                              child: Text(
                                                'วันที่สั่งซื้อ',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[500],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.centerRight,
                                              //color: Colors.blue,
                                              child: Text(
                                                '0' +
                                                    (index + 1).toString() +
                                                    '/0' +
                                                    (index + 1).toString() +
                                                    '/256' +
                                                    '0' +
                                                    (index + 1).toString(),
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[1000],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      height: 30,
                                      //color: Colors.yellow,
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              //color: Colors.orange,
                                              child: Text(
                                                'มูลค่าสุทธิ',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[500],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.centerRight,
                                              //color: Colors.blue,
                                              child: Text(
                                                'THB ' +
                                                    (index + 1).toString() +
                                                    '00',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[1000],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      height: 30,
                                      //color: Colors.yellow,
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              //color: Colors.orange,
                                              child: Text(
                                                'สถานะ',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[500],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.centerRight,
                                              //color: Colors.blue,
                                              child: index % 2 == 0
                                                  ? Text(
                                                      'เสร็จสมบูรณ์',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Colors.grey[1000],
                                                      ),
                                                    )
                                                  : Text(
                                                      'ยกเลิก',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Colors.grey[1000],
                                                      ),
                                                    ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      height: 40,
                                      //color: Colors.black,
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: RaisedButton(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              color: Colors.grey[50],
                                              onPressed: () {},
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.info_outline,
                                                    color: Colors.blue[800],
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      'รายละเอียด',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.blue[800],
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              //elevation: 0,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Expanded(
                                            child: RaisedButton(
                                              shape: StadiumBorder(),
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.replay,
                                                    color: Colors.orange[800],
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      'สั่งซื้อซ้ำ',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Colors.orange[800],
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              color: Colors.grey[50],
                                              onPressed: () {},
                                              //elevation: 0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  } else {
                    return SizedBox(
                      height: 50,
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
