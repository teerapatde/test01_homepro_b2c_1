import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homepro_b2c_1/screens/testScreen/testShowItem2.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> titleColumn1 = [
      'Appliances',
      'Sport & Fitness',
      'Home Improvement',
      'Home Organizers & Cleaning',
      'Bathroom',
      'Doors & Windows',
      'Construction',
    ];
    List<String> titleColumn2 = [
      'Television & Audio',
      'Furniture & Decor',
      'Kitchen',
      'Outdoors',
      'Floors & Walls',
      'Tools',
      'Lighting & Ceiling Fans',
    ];
    List<String> imgColumn1 = [
      'asset/img/categoryScreen/categories_1.jpg',
      'asset/img/categoryScreen/categories_3.jpg',
      'asset/img/categoryScreen/categories_5.jpg',
      'asset/img/categoryScreen/categories_7.jpg',
      'asset/img/categoryScreen/categories_9.jpg',
      'asset/img/categoryScreen/categories_11.jpg',
      'asset/img/categoryScreen/categories_13.jpg',
    ];
    List<String> imgColumn2 = [
      'asset/img/categoryScreen/categories_2.jpg',
      'asset/img/categoryScreen/categories_4.jpg',
      'asset/img/categoryScreen/categories_6.jpg',
      'asset/img/categoryScreen/categories_8.jpg',
      'asset/img/categoryScreen/categories_10.jpg',
      'asset/img/categoryScreen/categories_12.jpg',
      'asset/img/categoryScreen/categories_14.jpg',
    ];
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: titleColumn1.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  //color: Colors.green,
                  height: 210,
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          height: 180,
                          child: FlatButton(
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              print('Click Category : ' + titleColumn1[index]);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TestShowItem2(
                                    title: titleColumn1[index],
                                    detail: 'Detail of ' + titleColumn1[index],
                                    nameImg: imgColumn1[index],
                                  ),
                                ),
                              );
                            },
                            child: Card(
                              margin: EdgeInsets.all(0),
                              color: Colors.blue[800],
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage(imgColumn1[index]),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 42,
                                    //color: Colors.red,
                                    padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                                    alignment: Alignment.center,
                                    child: Text(
                                      titleColumn1[index],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          height: 180,
                          child: FlatButton(
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              print('Click Category : ' + titleColumn2[index]);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TestShowItem2(
                                    title: titleColumn2[index],
                                    detail: 'Detail of ' + titleColumn2[index],
                                    nameImg: imgColumn2[index],
                                  ),
                                ),
                              );
                            },
                            child: Card(
                              margin: EdgeInsets.all(0),
                              color: Colors.blue[800],
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage(imgColumn2[index]),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                                    height: 42,
                                    //color: Colors.red,
                                    alignment: Alignment.center,
                                    child: Text(
                                      titleColumn2[index],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
