import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homepro_b2c_1/screens/searchOldScreen.dart';

class DarwerScreen extends StatefulWidget {
  @override
  _DarwerScreenState createState() => _DarwerScreenState();
}

class _DarwerScreenState extends State<DarwerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                'TD',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
            ),
            accountName: Text('Teerapat Deweloh'),
            accountEmail: Text('thirapat22@gmail.com'),
            decoration: BoxDecoration(
              color: Colors.blue[800],
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text(
              'Sign in / Sign up',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Go to sign in page or sign up page',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('Click Sign in / Sign up');
              Navigator.of(context).pushNamed('/signinOrSignup');
            },
          ),
          ListTile(
            leading: Icon(Icons.search),
            title: Text(
              'Search Product',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Click to search product',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('Click search product');
              Navigator.of(context).pushNamed('/search');
            },
          ),
          ListTile(
            leading: Icon(Icons.sort_by_alpha),
            title: Text(
              'Shop by Brand',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Find product by brand',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('Click Shop by Brand');
              Navigator.of(context).pushNamed('/shopbybrand');
            },
          ),
          ListTile(
            leading: Icon(Icons.card_giftcard),
            title: Text(
              'Promotions',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Find all promotions',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('Click Promotions');
              Navigator.of(context).pushNamed('/promotions');
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text(
              'Inspire Me',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Click to inspire me',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('Click Inspire Me');
              Navigator.of(context).pushNamed('/inspireme');
            },
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text(
              'Find a store',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Click to find a store',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('Click Find a store');
              Navigator.of(context).pushNamed('/findstore');
            },
          ),
          ListTile(
            leading: Icon(Icons.build),
            title: Text(
              'Home Services',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Click to home service',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('Click Inspire Me');
              Navigator.of(context).pushNamed('/homeservice');
            },
          ),
          ListTile(
            leading: Icon(Icons.credit_card),
            title: Text(
              'Home Card',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Home card manage',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('Click Home Card');
              Navigator.of(context).pushNamed('/homecard');
            },
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text(
              'Order History',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Order history manage',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('Click Order History');
              Navigator.of(context).pushNamed('/orderhistory');
            },
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text(
              'Address Book',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Address book manage',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('Click Address Book');
              Navigator.of(context).pushNamed('/addressbook');
            },
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text(
              'Contact US',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Detail of contact us',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('Click Contact US');
              Navigator.of(context).pushNamed('/contactus');
            },
          ),
          ListTile(
            leading: Icon(Icons.bug_report),
            title: Text(
              'TEST',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Screen for test',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('Click TEST');
              Navigator.of(context).pushNamed('/test');
            },
          ),
          Divider(),
          ListTile(
            title: Text('Logout'),
            subtitle: Text(
              'Click here to log out.',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            trailing: Icon(Icons.exit_to_app),
            onTap: () {
              print('Click Logout');
            },
          ),
          ListTile(
            title: Text('Exit'),
            subtitle: Text(
              'Exit the application.',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            trailing: Icon(Icons.power_settings_new),
            onTap: () {
              print('Click Exit application');
            },
          ),
        ],
      ),
    );
  }
}
