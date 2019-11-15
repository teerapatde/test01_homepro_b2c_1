import 'package:flutter/material.dart';
import 'package:homepro_b2c_1/screens/signinOrSignupScreen/signinScreen.dart';
import 'package:homepro_b2c_1/screens/signinOrSignupScreen/signupScreen.dart';

class SignInOrSignUpScreen extends StatefulWidget {
  @override
  _SignInOrSignUpScreenState createState() => _SignInOrSignUpScreenState();
}

class _SignInOrSignUpScreenState extends State<SignInOrSignUpScreen> {
  String currentTab = 'signin';
  @override
  Widget build(BuildContext context) {
    Color colorTabSignIn, colorTabSignUp;
    String txtAppBarTitle;
    Widget contentShow;
    if (currentTab == 'signin') {
      colorTabSignIn = Colors.blue;
      colorTabSignUp = Colors.black;
      txtAppBarTitle = 'Sign in';
      contentShow = SigninScreen();
    } else if (currentTab == 'signup') {
      colorTabSignIn = Colors.black;
      colorTabSignUp = Colors.blue;
      txtAppBarTitle = 'Sign up';
      contentShow = SignupScreen();
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: Text(txtAppBarTitle),
        ),
        backgroundColor: Colors.grey[100],
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 150,
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                alignment: Alignment.center,
                child: Image.asset('asset/img/iconAndLogo/icon_homepro_en.png'),
              ),
              Container(
                //color: Colors.red,
                height: 50,
                padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                alignment: Alignment.center,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        //color: Colors.yellow,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Sign in',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: colorTabSignIn,
                              ),
                            ),
                            Divider(),
                          ],
                        ),
                        onPressed: () {
                          print('Click tab sign in');
                          setState(() {
                            currentTab = 'signin';
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: FlatButton(
                        //color: Colors.yellow,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Sign up',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: colorTabSignUp,
                              ),
                            ),
                            Divider(),
                          ],
                        ),
                        onPressed: () {
                          print('Click tab sign up');
                          //Navigator.of(context).pushReplacementNamed('/signup');
                          setState(() {
                            currentTab = 'signup';
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              contentShow,
              SizedBox(
                height: 80,
              )
            ],
          ),
        ),
      ),
    );
  }
}
