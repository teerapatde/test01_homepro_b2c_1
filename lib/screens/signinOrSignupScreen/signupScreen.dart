import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Column(
            children: <Widget>[
              Container(
                height: 140,
                //color: Colors.blue,
                padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Loading...'),
                  ],
                ),
              ),
              Container(
                height: 50,
                //color: Colors.yellow,
                padding: EdgeInsets.fromLTRB(50, 0, 0, 20),
              ),
              Container(
                //color: Colors.red,
                height: 100,
                padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: 50,
                            child: FlatButton(
                              color: Colors.blue[800],
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              shape: StadiumBorder(),
                              onPressed: () {
                                print('Click submit sign up');
                                //Navigator.of(context).pushReplacementNamed('/signin');
                                setState(() {
                                  isLoading = false;
                                });
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            height: 20,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        : Column(
            children: <Widget>[
              Container(
                height: 140,
                //color: Colors.blue,
                padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: 'Email',
                        hintText: 'Types email',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.vpn_key),
                        labelText: 'Password',
                        hintText: 'Types password',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                //color: Colors.yellow,
                padding: EdgeInsets.fromLTRB(50, 0, 0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.radio_button_checked),
                    SizedBox(
                      width: 10,
                    ),
                    Text('I want to subscribe promotions'),
                  ],
                ),
              ),
              Container(
                //color: Colors.red,
                height: 100,
                padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: 50,
                            child: FlatButton(
                              color: Colors.blue[800],
                              child: Text(
                                'Sign up',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              shape: StadiumBorder(),
                              onPressed: () {
                                print('Click submit sign up');
                                //Navigator.of(context).pushReplacementNamed('/signin');
                                setState(() {
                                  isLoading = true;
                                });
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            height: 20,
                            child:
                                Text('You agree to the HomePro Privacy Policy'),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
  }
}
