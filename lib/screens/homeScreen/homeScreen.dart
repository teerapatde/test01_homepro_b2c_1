import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:homepro_b2c_1/screens/testScreen/testShowItem2.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageLength = 4;
  int currentIndexPage = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => TestShowItem2(
                                              title: 'Banner 1',
                                              detail: 'Detail of banner 1',
                                              nameImg:
                                                  'asset/img/homeScreen/homePageView4.jpg',
                                            ),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                            image: AssetImage(
                                              'asset/img/homeScreen/homePageView4.jpg',
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
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => TestShowItem2(
                                              title: 'Banner 2',
                                              detail: 'Detail of banner 2',
                                              nameImg:
                                                  'asset/img/homeScreen/homePageView2.jpg',
                                            ),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                            image: AssetImage(
                                              'asset/img/homeScreen/homePageView2.jpg',
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
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => TestShowItem2(
                                              title: 'Banner 3',
                                              detail: 'Detail of banner 3',
                                              nameImg:
                                                  'asset/img/homeScreen/homePageView3.jpg',
                                            ),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                            image: AssetImage(
                                              'asset/img/homeScreen/homePageView3.jpg',
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
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => TestShowItem2(
                                              title: 'Banner 4',
                                              detail: 'Detail of banner 4',
                                              nameImg:
                                                  'asset/img/homeScreen/homePageView1.jpg',
                                            ),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                            image: AssetImage(
                                              'asset/img/homeScreen/homePageView1.jpg',
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
          Card(
            child: Container(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              height: 72.5,
              //color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.orange[500],
                              ),
                              width: 40,
                              height: 40,
                              child: IconButton(
                                tooltip: 'Many discounted products',
                                icon: Icon(
                                  Icons.flash_on,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  print('Click Flash Sale');
                                  Navigator.of(context).pushNamed('/flashsale');
                                },
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Flash Sale',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.purple[500],
                              ),
                              width: 40,
                              height: 40,
                              child: IconButton(
                                tooltip: 'Promotion Center',
                                icon: Icon(
                                  Icons.card_giftcard,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  print('Click Promotion');
                                  Navigator.of(context)
                                      .pushNamed('/promotions');
                                },
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Promotion',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green[500],
                              ),
                              width: 40,
                              height: 40,
                              child: IconButton(
                                tooltip: 'Sort products by brand',
                                icon: Icon(
                                  Icons.sort_by_alpha,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  print('Click Shop By Brand');
                                  Navigator.of(context)
                                      .pushNamed('/shopbybrand');
                                },
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Brand',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue[500],
                              ),
                              width: 40,
                              height: 40,
                              child: IconButton(
                                tooltip: 'Best Seller',
                                icon: Icon(
                                  Icons.list,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  print('Click Top Selection');
                                  Navigator.of(context)
                                      .pushNamed('/topselection');
                                },
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Best Sell',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 200,
            //color: Colors.red,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  //color: Colors.green[800],
                  height: 40,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.yellow[800],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Recommend Product',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                //color: Colors.yellow,
                                alignment: Alignment.centerRight,
                                child: FlatButton(
                                  onPressed: () {
                                    print('Click See More Recommend Product');
                                    Navigator.of(context)
                                        .pushNamed('/recommendProduct');
                                  },
                                  child: Text(
                                    'See More >',
                                    style: TextStyle(
                                      color: Colors.yellow[800],
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 160,
                  //color: Colors.yellow,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          //color: Colors.purple,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 150,
                                height: 160,
                                //color: Colors.red,
                                child: FlatButton(
                                  padding: EdgeInsets.all(0),
                                  onPressed: () {
                                    print(
                                        'Click Air Condition Item in ListView Recommend Product');
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => TestShowItem2(
                                          title: 'Air Condition',
                                          detail: '9,999 THB',
                                          nameImg:
                                              'asset/img/homeScreen/recommend_1.jpg',
                                        ),
                                      ),
                                    );
                                  },
                                  child: Card(
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          height: 100,
                                          //color: Colors.red,
                                          child: Image.asset(
                                            'asset/img/homeScreen/recommend_1.jpg',
                                            fit: BoxFit.fill,
                                            height: double.infinity,
                                            width: double.infinity,
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 5, 0),
                                          height: 32,
                                          //color: Colors.purple,
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Air Condition',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 5, 0),
                                          height: 20,
                                          //color: Colors.yellow,
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            '9,999 THB',
                                            style: TextStyle(
                                              fontSize: 12.5,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 160,
                                //color: Colors.red,
                                child: FlatButton(
                                  padding: EdgeInsets.all(0),
                                  onPressed: () {
                                    print(
                                        'Click Watch Item in ListView Recommend Product');
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => TestShowItem2(
                                          title: 'Watch',
                                          detail: '5,000 THB',
                                          nameImg:
                                              'asset/img/homeScreen/recommend_2.jpg',
                                        ),
                                      ),
                                    );
                                  },
                                  child: Card(
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          height: 100,
                                          //color: Colors.red,
                                          child: Image.asset(
                                            'asset/img/homeScreen/recommend_2.jpg',
                                            fit: BoxFit.fill,
                                            height: double.infinity,
                                            width: double.infinity,
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 5, 0),
                                          height: 32,
                                          //color: Colors.purple,
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Watch',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 5, 0),
                                          height: 20,
                                          //color: Colors.yellow,
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            '5,000 THB',
                                            style: TextStyle(
                                              fontSize: 12.5,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 160,
                                //color: Colors.red,
                                child: FlatButton(
                                  padding: EdgeInsets.all(0),
                                  onPressed: () {
                                    print(
                                        'Click Toilet Item in ListView Recommend Product');
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => TestShowItem2(
                                          title: 'Toilet',
                                          detail: '5,000 THB',
                                          nameImg:
                                              'asset/img/homeScreen/recommend_3.jpg',
                                        ),
                                      ),
                                    );
                                  },
                                  child: Card(
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          height: 100,
                                          //color: Colors.red,
                                          child: Image.asset(
                                            'asset/img/homeScreen/recommend_3.jpg',
                                            fit: BoxFit.fill,
                                            height: double.infinity,
                                            width: double.infinity,
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 5, 0),
                                          height: 32,
                                          //color: Colors.purple,
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Toilet',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 5, 0),
                                          height: 20,
                                          //color: Colors.yellow,
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            '5,000 THB',
                                            style: TextStyle(
                                              fontSize: 12.5,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 160,
                                //color: Colors.red,
                                child: FlatButton(
                                  padding: EdgeInsets.all(0),
                                  onPressed: () {
                                    print(
                                        'Click Sofa Item in ListView Recommend Product');
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => TestShowItem2(
                                          title: 'Sofa',
                                          detail: '5,000 THB',
                                          nameImg:
                                              'asset/img/homeScreen/recommend_4.jpg',
                                        ),
                                      ),
                                    );
                                  },
                                  child: Card(
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          height: 100,
                                          //color: Colors.red,
                                          child: Image.asset(
                                            'asset/img/homeScreen/recommend_4.jpg',
                                            fit: BoxFit.fill,
                                            height: double.infinity,
                                            width: double.infinity,
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 5, 0),
                                          height: 32,
                                          //color: Colors.purple,
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Sofa',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 5, 0),
                                          height: 20,
                                          //color: Colors.yellow,
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            '5,000 THB',
                                            style: TextStyle(
                                              fontSize: 12.5,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 200,
            //color: Colors.red,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  //color: Colors.green[800],
                  height: 40,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.build,
                              color: Colors.yellow[800],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Best Services for Your Home',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 160,
                  //color: Colors.yellow,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          //color: Colors.purple,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 150,
                                height: 160,
                                //color: Colors.red,
                                child: FlatButton(
                                  padding: EdgeInsets.all(0),
                                  onPressed: () {
                                    print(
                                        'Click Home Makeover Item in ListView Best Services for Your Home');
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => TestShowItem2(
                                          title: 'Home Makeover',
                                          detail:
                                              'Make your home more beautiful with professional services such as home improvement, expansion in one complete operation',
                                          nameImg:
                                              'asset/img/homeScreen/serviceHome_1.png',
                                        ),
                                      ),
                                    );
                                  },
                                  child: Card(
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          height: 100,
                                          //padding: EdgeInsets.all(10),
                                          //color: Colors.red,
                                          child: Image.asset(
                                            'asset/img/homeScreen/serviceHome_1.png',
                                            fit: BoxFit.fill,
                                            height: double.infinity,
                                            width: double.infinity,
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 5, 0),
                                          height: 32,
                                          //color: Colors.purple,
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Home Makeover',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 5, 0),
                                          height: 20,
                                          //color: Colors.yellow,
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            '',
                                            style: TextStyle(
                                              fontSize: 12.5,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 160,
                                //color: Colors.red,
                                child: FlatButton(
                                  padding: EdgeInsets.all(0),
                                  onPressed: () {
                                    print(
                                        'Click Installation Services Item in ListView Best Services for Your Home');
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => TestShowItem2(
                                          title: 'Installation Services',
                                          detail:
                                              'Moving, modifying and installation service with professional technicians with 180 days of warranty',
                                          nameImg:
                                              'asset/img/homeScreen/serviceHome_2.png',
                                        ),
                                      ),
                                    );
                                  },
                                  child: Card(
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          height: 100,
                                          //color: Colors.red,
                                          child: Image.asset(
                                            'asset/img/homeScreen/serviceHome_2.png',
                                            fit: BoxFit.fill,
                                            height: double.infinity,
                                            width: double.infinity,
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 5, 0),
                                          height: 32,
                                          //color: Colors.purple,
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Installation Services',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 5, 0),
                                          height: 20,
                                          //color: Colors.yellow,
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            '',
                                            style: TextStyle(
                                              fontSize: 12.5,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 160,
                                //color: Colors.red,
                                child: FlatButton(
                                  padding: EdgeInsets.all(0),
                                  onPressed: () {
                                    print(
                                        'Click Maintenance Service Item in ListView Best Services for Your Home');
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => TestShowItem2(
                                          title: 'Maintenance Service',
                                          detail:
                                              'Add hygiene with comprehensive cleaning services with residue-free chemicals. Extend the life of your appliances with 30 Days of warranty',
                                          nameImg:
                                              'asset/img/homeScreen/serviceHome_3.png',
                                        ),
                                      ),
                                    );
                                  },
                                  child: Card(
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          height: 100,
                                          //color: Colors.red,
                                          child: Image.asset(
                                            'asset/img/homeScreen/serviceHome_3.png',
                                            fit: BoxFit.fill,
                                            height: double.infinity,
                                            width: double.infinity,
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 5, 0),
                                          height: 32,
                                          //color: Colors.purple,
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Maintenance Service',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 5, 0),
                                          height: 20,
                                          //color: Colors.yellow,
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            '',
                                            style: TextStyle(
                                              fontSize: 12.5,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 160,
                                //color: Colors.red,
                                child: FlatButton(
                                  padding: EdgeInsets.all(0),
                                  onPressed: () {
                                    print(
                                        'Click 3D Service Item in ListView Best Services for Your Home');
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => TestShowItem2(
                                          title: '3D Service',
                                          detail:
                                              'Design your home from your lifestyle. Make your home a happy living place. Get good advices from our professional interior designer',
                                          nameImg:
                                              'asset/img/homeScreen/serviceHome_4.png',
                                        ),
                                      ),
                                    );
                                  },
                                  child: Card(
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          height: 100,
                                          //color: Colors.red,
                                          child: Image.asset(
                                            'asset/img/homeScreen/serviceHome_4.png',
                                            fit: BoxFit.fill,
                                            height: double.infinity,
                                            width: double.infinity,
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 5, 0),
                                          height: 32,
                                          //color: Colors.purple,
                                          alignment: Alignment.center,
                                          child: Text(
                                            '3D Service',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 5, 0),
                                          height: 20,
                                          //color: Colors.yellow,
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            '',
                                            style: TextStyle(
                                              fontSize: 12.5,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
