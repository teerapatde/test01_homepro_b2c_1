import 'package:flutter/material.dart';
import 'package:homepro_b2c_1/screens/accountScreen/user_setting_box_function.dart';
import 'package:homepro_b2c_1/screens/accountScreen/user_setting_box_information.dart';
import 'package:homepro_b2c_1/screens/accountScreen/user_setting_list_function.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          user_setting_box_information(),
          // -- Box Function
          user_setting_box_function(),
          // -- List Function
          user_setting_list_function(),
        ],
      ),
    );
  }
}
