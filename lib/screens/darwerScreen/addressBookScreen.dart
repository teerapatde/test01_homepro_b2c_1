import 'package:flutter/material.dart';

class AddressBookScreen extends StatefulWidget {
  @override
  _AddressBookScreenState createState() => _AddressBookScreenState();
}

class _AddressBookScreenState extends State<AddressBookScreen> {
  int cntAddress = 10;
  int defaultItem = 0, defaultDoc = 0;
  var chkBoxItem = List();
  var chkBoxDoc = List();
  List<Map<String, String>> addressBook = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < cntAddress; i++) {
      chkBoxItem.add(false);
      chkBoxDoc.add(false);
      addressBook.add({
        'name': 'Name$i',
        'tel': '08$i$i$i$i$i$i$i$i$i$i',
        'address':
            '$i$i$i / $i$i Soi $i Bangkok $i Pathum thani $i Nonthaburi Bangkok $i Pathum thani $i Nonthaburi Thailand $i$i$i$i$i'
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Future<void> _AlertBoxNewAddress() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: true, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Add Address'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Open form new address.'),
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

    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Address'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: 50,
              //color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Default address Item : ' +
                      addressBook[defaultItem]['name'] +
                      ' (' +
                      addressBook[defaultItem]['tel'] +
                      ')'),
                  Text('Default address Doc  : ' +
                      addressBook[defaultDoc]['name'] +
                      ' (' +
                      addressBook[defaultDoc]['tel'] +
                      ')'),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: cntAddress,
                itemBuilder: (BuildContext context, int index) {
                  if (index + 1 < cntAddress) {
                    return Container(
                      color: Colors.white,
                      height: 161,
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: Column(
                        children: <Widget>[
                          // -- Row 1 (Name, Phone)
                          Row(
                            children: <Widget>[
                              // -- Name Lastname
                              Expanded(
                                child: Container(
                                  //color: Colors.cyanAccent,
                                  height: 50,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    addressBook[index]['name'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Color(0xff202340),
                                    ),
                                  ),
                                ),
                              ),
                              // -- Phone
                              Expanded(
                                child: Container(
                                  //color: Colors.pink,
                                  height: 50,
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    addressBook[index]['tel'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Color(0xff202340),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // -- Row 2 (Address)
                          Row(
                            children: <Widget>[
                              // -- Address
                              Expanded(
                                child: Container(
                                  //color: Colors.orange,
                                  height: 60,
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    addressBook[index]['address'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Color(0xff202340),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              // -- Address
                              Expanded(
                                child: Container(
                                  height: 1,
                                  color: Color(0xffF2F2F2),
                                ),
                              )
                            ],
                          ),
                          // -- Row 3 (Default Address, Edit, Delete)
                          Row(
                            children: <Widget>[
                              // -- Name Lastname
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  //color: Colors.cyanAccent,
                                  width: 50,
                                  height: 50,
                                  alignment: Alignment.center,
                                  child: Checkbox(
                                    value: defaultItem == index ? true : false,
                                    onChanged: (bool changed) {
                                      setState(() {
                                        if (changed) {
                                          defaultItem = index;
                                        } else {
                                          defaultItem = 0;
                                        }
                                      });
                                    },
                                    activeColor: Colors.red,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                    //color: Colors.cyanAccent,
                                    height: 50,
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Deliver items',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: Color(0xff202340),
                                      ),
                                    )),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  //color: Colors.cyanAccent,
                                  width: 50,
                                  height: 50,
                                  alignment: Alignment.center,
                                  child: Checkbox(
                                    value: defaultDoc == index ? true : false,
                                    onChanged: (bool changed) {
                                      setState(() {
                                        if (changed) {
                                          defaultDoc = index;
                                        } else {
                                          defaultDoc = 0;
                                        }
                                      });
                                    },
                                    activeColor: Colors.red,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                    //color: Colors.cyanAccent,
                                    height: 50,
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Deliver document',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: Color(0xff202340),
                                      ),
                                    )),
                              ),
                              //
                              // -- Phone
                              Expanded(
                                flex: 1,
                                child: Container(
                                  //color: Colors.pink,
                                  height: 50,
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.edit,
                                  ),
                                ),
                              ),
                              Container(
                                width: 10,
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  //color: Colors.pink,
                                  height: 50,
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.delete_forever,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Container(
                      color: Colors.white,
                      height: 161,
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      margin: EdgeInsets.fromLTRB(0, 15, 0, 80),
                      child: Column(
                        children: <Widget>[
                          // -- Row 1 (Name, Phone)
                          Row(
                            children: <Widget>[
                              // -- Name Lastname
                              Expanded(
                                child: Container(
                                  //color: Colors.cyanAccent,
                                  height: 50,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Name (ID : $index)',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Color(0xff202340),
                                    ),
                                  ),
                                ),
                              ),
                              // -- Phone
                              Expanded(
                                child: Container(
                                  //color: Colors.pink,
                                  height: 50,
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    '089-999-9999',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Color(0xff202340),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // -- Row 2 (Address)
                          Row(
                            children: <Widget>[
                              // -- Address
                              Expanded(
                                child: Container(
                                  //color: Colors.orange,
                                  height: 60,
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    '256/344 หมู่ 4 ถนนรามคำแหง ตำบลคลองกุ่ม อำเภอบึงกุ่ม กรุงเทพมหานคร 12400 ตำบลคลองกุ่ม ตำบลคลองกุ่ม ตำบลคลองกุ่ม ตำบลคลองกุ่ม',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Color(0xff202340),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              // -- Address
                              Expanded(
                                child: Container(
                                  height: 1,
                                  color: Color(0xffF2F2F2),
                                ),
                              )
                            ],
                          ),
                          // -- Row 3 (Default Address, Edit, Delete)
                          Row(
                            children: <Widget>[
                              // -- Name Lastname
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  //color: Colors.cyanAccent,
                                  width: 50,
                                  height: 50,
                                  alignment: Alignment.center,
                                  child: Checkbox(
                                    value: defaultItem == index ? true : false,
                                    onChanged: (bool changed) {
                                      setState(() {
                                        if (changed) {
                                          defaultItem = index;
                                        } else {
                                          defaultItem = 0;
                                        }
                                      });
                                    },
                                    activeColor: Colors.red,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                    //color: Colors.cyanAccent,
                                    height: 50,
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Deliver items',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: Color(0xff202340),
                                      ),
                                    )),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  //color: Colors.cyanAccent,
                                  width: 50,
                                  height: 50,
                                  alignment: Alignment.center,
                                  child: Checkbox(
                                    value: defaultDoc == index ? true : false,
                                    onChanged: (bool changed) {
                                      setState(() {
                                        if (changed) {
                                          defaultDoc = index;
                                        } else {
                                          defaultDoc = 0;
                                        }
                                      });
                                    },
                                    activeColor: Colors.red,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                    //color: Colors.cyanAccent,
                                    height: 50,
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Deliver document',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: Color(0xff202340),
                                      ),
                                    )),
                              ),
                              //
                              // -- Phone
                              Expanded(
                                flex: 1,
                                child: Container(
                                  //color: Colors.pink,
                                  height: 50,
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.edit,
                                  ),
                                ),
                              ),
                              Container(
                                width: 10,
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  //color: Colors.pink,
                                  height: 50,
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.delete_forever,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Click New Address');
          _AlertBoxNewAddress();
        },
        tooltip: 'New Address',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
