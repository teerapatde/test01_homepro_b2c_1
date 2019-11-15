import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
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
                                print('Click OK after signin');
                                setState(() {
                                  isLoading = false;
                                });
                                //Navigator.of(context).pushReplacementNamed('/signin');
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
                    Text('Remember me'),
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
                                'Sign in',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              shape: StadiumBorder(),
                              onPressed: () {
                                print('Click submit sign in');
                                setState(() {
                                  isLoading = true;
                                });
                                //Navigator.of(context).pushReplacementNamed('/signin');
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
                            child: Text('Forget Your Password?'),
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
