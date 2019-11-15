import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class TestJsonRandomUser1Screen extends StatefulWidget {
  @override
  _TestJsonRandomUser1ScreenState createState() =>
      _TestJsonRandomUser1ScreenState();
}

class _TestJsonRandomUser1ScreenState extends State<TestJsonRandomUser1Screen> {
  var users;
  String url = 'https://randomuser.me/api/?results=30';
  bool isLoading = true;

  Future<Null> getUsers() async {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      print(jsonResponse);
      print('GET JSON OK');
      setState(() {
        users = jsonResponse['results'];
        isLoading = false;
      });
    } else {
      print('Connection Status Code = ' + response.statusCode.toString());
    }
  }

  Future<void> _AlertBoxDetail(int index) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Container(
                  height: 220,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage:
                        NetworkImage(users[index]['picture']['large']),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  '${users[index]['name']['first']} ${users[index]['name']['last']}',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'E-Mail : ${users[index]["email"]}',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Username : ${users[index]['login']['username']}',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Password : ${users[index]['login']['password']}',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Phone : ${users[index]['phone']}',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TEST Get Json 1'),
      ),
      body: RefreshIndicator(
        onRefresh: getUsers,
        child: isLoading == true
            ? Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      alignment: Alignment(0, 0),
                      child: Container(
                        height: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            CircularProgressIndicator(),
                            SizedBox(height: 20),
                            Text(
                              'Get json',
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 2.5),
                            Text(
                              url,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            : ListView.builder(
                itemBuilder: (context, int index) {
                  return Column(
                    children: <Widget>[
                      ListTile(
                        onTap: () {
                          _AlertBoxDetail(index);
                        },
                        leading: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage:
                              NetworkImage(users[index]['picture']['medium']),
                        ),
                        title: Text(
                          '${users[index]['name']['first']} ${users[index]['name']['last']}',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text('${users[index]["email"]}'),
                        trailing: Icon(Icons.keyboard_arrow_right),
                      ),
                    ],
                  );
                },
                itemCount: 30,
              ),
      ),
    );
  }
}
