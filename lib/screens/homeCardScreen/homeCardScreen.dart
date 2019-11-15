import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:homepro_b2c_1/screens/testScreen/testShowItem1.dart';

class HomeCardScreen extends StatefulWidget {
  @override
  _HomeCardScreenState createState() => _HomeCardScreenState();
}

class _HomeCardScreenState extends State<HomeCardScreen> {
  int pageLength = 4;
  int currentIndexPage = 0;

  Future<void> _AlertBoxConnectHomeCard() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          title: Text(
            'ผูกบัตร HomeCard',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue[800],
            ),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'โปรดป้อนข้อมูลใดข้อมูลหนึ่ง',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    ' - หมายเลขบัตรโฮมการ์ด\n - หมายเลขโทรศัพท์\n - หมายเลขบัตรประชาขน\n - หมายเลขหนังสือเดินทาง',
                    style: TextStyle(
                      fontSize: 12,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 250,
                  child: TextFormField(
                    //autofocus: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.credit_card),
                      labelText: 'โปรดป้อนข้อมูล',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 250,
                  height: 50,
                  child: RaisedButton(
                    elevation: 0,
                    color: Colors.blue[800],
                    child: Text(
                      'ผูกบัตร HomeCard',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () {
                      print('Click Connect HomeCard');
                      Navigator.of(context).pop();
                      _AlertBoxConnectHomeCard2();
                    },
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _AlertBoxConnectHomeCard2() async {
    Future.delayed(
      Duration(seconds: 2),
      () {
        Navigator.of(context).pop();
      },
    );
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'ผูกบัตร HomeCard',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue[800],
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          content: SingleChildScrollView(
            child: Container(
              height: 209,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  CircularProgressIndicator(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Loading...',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> _AlertBoxRegisterHomeCard() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          title: Text(
            'สมัครบัตร HomeCard',
            style: TextStyle(
              color: Colors.blue[800],
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'โปรดป้อนข้อมูลให้ครบถ้วน',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 250,
                  //color: Colors.red,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.account_circle),
                          labelText: 'ชื่อ-นามสกุล',
                          hintText: 'เช่น พันรบ เจตนา',
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 12.5,
                      ),
                      Container(
                        //color: Colors.red,
                        width: 250,
                        height: 25,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.center,
                              child: Radio(),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                'ชาย',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Radio(
                                value: 1,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                'หญิง',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Radio(
                                value: 2,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                'อื่นๆ',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12.5,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.credit_card),
                          labelText: 'เลขที่บัตรประชาชน',
                          hintText: 'เช่น 1100400636150',
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 12.5,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.phone),
                          labelText: 'เบอร์โทรศัพท์',
                          hintText: 'เช่น 0888889999',
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 12.5,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.location_on),
                          labelText: 'ที่อยู่',
                          hintText: 'เช่น 1/5 นนทบุรี 11000',
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 12.5,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email),
                          labelText: 'อีเมล',
                          hintText: 'เช่น email@email.com',
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.5,
                ),
                Container(
                  width: 250,
                  height: 50,
                  child: RaisedButton(
                    elevation: 0,
                    color: Colors.blue[800],
                    child: Text(
                      'สมัครบัตร HomeCard',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () {
                      print('Click Register HomeCard');
                      Navigator.of(context).pop();
                      _AlertBoxRegisterHomeCard2();
                    },
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _AlertBoxRegisterHomeCard2() async {
    Future.delayed(
      Duration(seconds: 2),
      () {
        Navigator.of(context).pop();
      },
    );
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'สมัครบัตร HomeCard',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue[800],
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          content: SingleChildScrollView(
            child: Container(
              height: 209,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  CircularProgressIndicator(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Loading...',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('HomeCard'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              //color: Colors.red,
              child: Stack(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.fromLTRB(15, 7.5, 15, 7.5),
                          child: PageView(
                            onPageChanged: (pageNo) {
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
                                      child: FlatButton(
                                        padding: EdgeInsets.all(0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'asset/img/homeCardScreen/homecard_1.jpg',
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
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
                                      child: FlatButton(
                                        padding: EdgeInsets.all(0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'asset/img/homeCardScreen/homecard_2.jpg',
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
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
                                      child: FlatButton(
                                        padding: EdgeInsets.all(0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'asset/img/homeCardScreen/homecard_3.jpg',
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
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
                                      child: FlatButton(
                                        padding: EdgeInsets.all(0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'asset/img/homeCardScreen/homecard_4.jpg',
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
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
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 30,
                      alignment: Alignment.center,
                      child: DotsIndicator(
                        dotsCount: pageLength,
                        position: currentIndexPage,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 55,
                  width: 250,
                  child: RaisedButton(
                    color: Colors.blue[800],
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          //color: Colors.red,
                          child: Icon(
                            Icons.fiber_new,
                            size: 37.5,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'สมัครบัตร HomeCard',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                alignment: Alignment.centerLeft,
                              ),
                              SizedBox(
                                height: 2.5,
                              ),
                              Container(
                                child: Text(
                                  'สำหรับผู้ที่ยังไม่มีบัตร',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 9,
                                  ),
                                ),
                                alignment: Alignment.centerLeft,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    shape: StadiumBorder(),
                    onPressed: () {
                      print('Click Register HomeCard');
                      //Navigator.of(context).pushNamed('/registerhomecard');
                      _AlertBoxRegisterHomeCard();
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 55,
                  width: 250,
                  child: RaisedButton(
                    color: Colors.blue[800],
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          //color: Colors.red,
                          child: Icon(
                            Icons.credit_card,
                            size: 37.5,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'ผูกบัตร HomeCard',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                alignment: Alignment.centerLeft,
                              ),
                              SizedBox(
                                height: 2.5,
                              ),
                              Container(
                                child: Text(
                                  'สำหรับผู้ที่มีบัตรแล้ว',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 9,
                                  ),
                                ),
                                alignment: Alignment.centerLeft,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    shape: StadiumBorder(),
                    onPressed: () {
                      print('Click Connect HomeCard');
                      //Navigator.of(context).pushNamed('/connecthomecard');
                      _AlertBoxConnectHomeCard();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
