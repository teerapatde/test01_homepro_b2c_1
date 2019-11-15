import 'package:flutter/material.dart';
import 'package:homepro_b2c_1/screens/accountScreen/accountScreen.dart';
import 'package:homepro_b2c_1/screens/cartScreen/cartScreen.dart';
import 'package:homepro_b2c_1/screens/categoryScreen/categoryScreen.dart';
import 'package:homepro_b2c_1/screens/darwerScreen/drawerScreen.dart';
import 'package:homepro_b2c_1/screens/favoriteScreen/favoriteScreen.dart';
import 'package:homepro_b2c_1/screens/homeScreen/homeScreen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndexBottomNavigationBar = 0;
  List pages = [
    HomeScreen(),
    CategoryScreen(),
    FavoriteScreen(),
    CartScreen(),
    AccountScreen(),
  ];
  List titlePages = [
    'HomePro',
    'Category',
    'Favorite',
    'Cart',
    'Account',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: Text(titlePages[currentIndexBottomNavigationBar]),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                print('Click Search');
                Navigator.of(context).pushNamed('/search');
              },
              icon: Icon(Icons.search),
            ),
            currentIndexBottomNavigationBar != 2 &&
                    currentIndexBottomNavigationBar != 3
                ? IconButton(
                    onPressed: () {
                      print('Click Notfication');
                      Navigator.of(context).pushNamed('/notification');
                    },
                    icon: Icon(Icons.notifications),
                  )
                : IconButton(
                    onPressed: () {
                      print(
                          'Click Delete on Favorite or Cart Screen in Appbar');
                    },
                    icon: Icon(Icons.delete_forever),
                  ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: pages[currentIndexBottomNavigationBar],
        drawer: DarwerScreen(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndexBottomNavigationBar,
          onTap: (int index) {
            setState(() {
              currentIndexBottomNavigationBar = index;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              title: Text('Category'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('Favorite'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text('Cart'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('Account'),
            ),
          ],
        ),
      ),
    );
  }
}
