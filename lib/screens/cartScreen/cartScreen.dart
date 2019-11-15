import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homepro_b2c_1/screens/testScreen/testShowItem2.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int cntFavorite = 10;
  bool chkBoxFavoriteAll;
  List<bool> chkBoxFavorite = [];
  List<int> cntItemFavorite = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < cntFavorite; i++) {
      chkBoxFavorite.add(false);
    }
    for (int i = 0; i < cntFavorite; i++) {
      cntItemFavorite.add(1);
    }
    chkBoxFavoriteAll = false;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          Container(
            height: 50,
            //color: Colors.yellow,
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(10, 0, 15, 0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 50,
                    alignment: Alignment.centerLeft,
                    child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      child: FlatButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {
                          print('Click Select All');
                          setState(() {
                            if (chkBoxFavoriteAll) {
                              chkBoxFavoriteAll = false;
                              for (int i = 0; i < cntFavorite; i++) {
                                chkBoxFavorite[i] = false;
                              }
                            } else {
                              chkBoxFavoriteAll = true;
                              for (int i = 0; i < cntFavorite; i++) {
                                chkBoxFavorite[i] = true;
                              }
                            }
                          });
                        },
                        //color: Colors.red,
                        child: Row(
                          children: <Widget>[
                            Checkbox(
                              value: chkBoxFavoriteAll,
                              activeColor: Colors.blue[800],
                              onChanged: (bool select) {
                                setState(() {
                                  if (chkBoxFavoriteAll) {
                                    chkBoxFavoriteAll = false;
                                    for (int i = 0; i < cntFavorite; i++) {
                                      chkBoxFavorite[i] = false;
                                    }
                                  } else {
                                    chkBoxFavoriteAll = true;
                                    for (int i = 0; i < cntFavorite; i++) {
                                      chkBoxFavorite[i] = true;
                                    }
                                  }
                                });
                              },
                            ),
                            Text('Select All'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: Colors.grey[200],
                      child: ListView.builder(
                        itemCount: cntFavorite,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: <Widget>[
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 10,
                                color: Colors.white,
                              ),
                              FlatButton(
                                padding: EdgeInsets.all(0),
                                onPressed: () {
                                  print('Click Product ' +
                                      (index + 1).toString() +
                                      ' in favorite');
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => TestShowItem2(
                                        title:
                                            'Title ' + (index + 1).toString(),
                                        detail: 'Detail of ' +
                                            'Title ' +
                                            (index + 1).toString(),
                                        nameImg:
                                            'asset/img/cartScreen/product_' +
                                                ((cntFavorite - 1 - index) + 1)
                                                    .toString() +
                                                '.jpg',
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  height: 150,
                                  color: Colors.white,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        height: 30,
                                        color: Colors.white,
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                //color: Colors.cyanAccent,
                                                alignment: Alignment.centerLeft,
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 0, 0, 0),
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  width: 120,
                                                  child: FlatButton(
                                                    padding: EdgeInsets.all(0),
                                                    onPressed: () {
                                                      print('Click Select');
                                                      setState(() {
                                                        if (chkBoxFavorite[
                                                            index]) {
                                                          chkBoxFavorite[
                                                              index] = false;
                                                          chkBoxFavoriteAll =
                                                              false;
                                                        } else {
                                                          chkBoxFavorite[
                                                              index] = true;
                                                          int cntTrue = 0;
                                                          for (int i = 0;
                                                              i < cntFavorite;
                                                              i++) {
                                                            if (chkBoxFavorite[
                                                                i]) cntTrue++;
                                                          }
                                                          if (cntTrue ==
                                                              cntFavorite)
                                                            chkBoxFavoriteAll =
                                                                true;
                                                        }
                                                      });
                                                    },
                                                    //color: Colors.red,
                                                    child: Row(
                                                      children: <Widget>[
                                                        Checkbox(
                                                          onChanged:
                                                              (bool select) {
                                                            setState(() {
                                                              if (chkBoxFavorite[
                                                                  index]) {
                                                                chkBoxFavorite[
                                                                        index] =
                                                                    false;
                                                                chkBoxFavoriteAll =
                                                                    false;
                                                              } else {
                                                                chkBoxFavorite[
                                                                        index] =
                                                                    true;
                                                                int cntTrue = 0;
                                                                for (int i = 0;
                                                                    i < cntFavorite;
                                                                    i++) {
                                                                  if (chkBoxFavorite[
                                                                      i])
                                                                    cntTrue++;
                                                                }
                                                                if (cntTrue ==
                                                                    cntFavorite)
                                                                  chkBoxFavoriteAll =
                                                                      true;
                                                              }
                                                            });
                                                          },
                                                          activeColor:
                                                              Colors.blue[800],
                                                          value: chkBoxFavorite[
                                                              index],
                                                        ),
                                                        Text('Select'),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                //color: Colors.green,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 0, 10, 0),
                                                child: Icon(
                                                    Icons.arrow_forward_ios),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 120,
                                        color: Colors.white,
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              height: 120,
                                              width: 125,
                                              //color: Colors.green,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'asset/img/cartScreen/product_' +
                                                          ((cntFavorite -
                                                                      1 -
                                                                      index) +
                                                                  1)
                                                              .toString() +
                                                          '.jpg'),
                                                  fit: BoxFit.contain,
                                                  alignment: Alignment.center,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                height: 120,
                                                padding: EdgeInsets.fromLTRB(
                                                    10, 0, 0, 0),
                                                //color: Colors.purple,
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      height: 30,
                                                      //color: Colors.orange,
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text(
                                                        'Title ' +
                                                            (index + 1)
                                                                .toString(),
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 30,
                                                      //color: Colors.blue,
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text(
                                                        (index + 1).toString() +
                                                            '00.00 THB',
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors
                                                              .orange[500],
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Container(
                                                      height: 35,
                                                      //color: Colors.orange,
                                                      child: Row(
                                                        children: <Widget>[
                                                          Container(
                                                            width: 50,
                                                            //color: Colors.purple,
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: IconButton(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(0),
                                                              icon: Icon(
                                                                Icons
                                                                    .delete_outline,
                                                                color: Colors
                                                                    .grey[500],
                                                              ),
                                                              onPressed: () {
                                                                print('Click Delete product ' +
                                                                    (index + 1)
                                                                        .toString());
                                                              },
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                                //color: Colors.red,
                                                                ),
                                                          ),
                                                          Container(
                                                            //color: Colors.green,
                                                            width: 140,
                                                            alignment: Alignment
                                                                .center,
                                                            child: Row(
                                                              children: <
                                                                  Widget>[
                                                                Container(
                                                                  width: 30,
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child:
                                                                      RaisedButton(
                                                                    child: Icon(
                                                                      Icons
                                                                          .remove_circle_outline,
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      setState(
                                                                          () {
                                                                        if (cntItemFavorite[index] >
                                                                            1) {
                                                                          cntItemFavorite[
                                                                              index]--;
                                                                        }
                                                                      });
                                                                    },
                                                                    padding:
                                                                        EdgeInsets
                                                                            .all(0),
                                                                    color: Colors
                                                                            .grey[
                                                                        100],
                                                                    elevation:
                                                                        1.5,
                                                                  ),
                                                                ),
                                                                Card(
                                                                  child:
                                                                      Container(
                                                                    color: Colors
                                                                        .orange,
                                                                    width: 80,
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child:
                                                                        FlatButton(
                                                                      child:
                                                                          Text(
                                                                        cntItemFavorite[index]
                                                                            .toString(),
                                                                        style: TextStyle(
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            color: Colors.white),
                                                                      ),
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              0),
                                                                      onPressed:
                                                                          () {},
                                                                    ),
                                                                  ),
                                                                  margin:
                                                                      EdgeInsets
                                                                          .all(
                                                                              0),
                                                                  elevation: 2,
                                                                ),
                                                                Container(
                                                                  width: 30,
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child:
                                                                      RaisedButton(
                                                                    child: Icon(
                                                                        Icons
                                                                            .add_circle_outline),
                                                                    onPressed:
                                                                        () {
                                                                      setState(
                                                                          () {
                                                                        if (cntItemFavorite[index] <
                                                                            99999) {
                                                                          cntItemFavorite[
                                                                              index]++;
                                                                        }
                                                                      });
                                                                    },
                                                                    padding:
                                                                        EdgeInsets
                                                                            .all(0),
                                                                    color: Colors
                                                                            .grey[
                                                                        100],
                                                                    elevation:
                                                                        1.5,
                                                                  ),
                                                                ),
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
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 10,
                                color: Colors.white,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 70,
            //color: Colors.white,
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              children: <Widget>[
                Container(
                  width: 170,
                  //color: Colors.white,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Total ',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 2.5,
                      ),
                      Text(
                        '1,000,000.00 THB',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 7.5,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                      //color: Colors.white,
                      ),
                ),
                Container(
                  width: 140,
                  //color: Colors.white,
                  alignment: Alignment.centerRight,
                  child: RaisedButton(
                    elevation: 0,
                    onPressed: () {},
                    color: Colors.orange[500],
                    child: Container(
                      width: 85,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        'BUY',
                        style: TextStyle(
                          fontSize: 17.5,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
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
    );
  }
}
