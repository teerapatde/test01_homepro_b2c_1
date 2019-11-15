import 'package:flutter/material.dart';
import 'package:homepro_b2c_1/screens/testScreen/testShowItem3.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final myController = TextEditingController();
  int cntItemSearch = 0;
  var jsonResponse;
  bool isLoading = true;
  bool isFirstRun = true;
  String msgToUser = '';

  Future<Null> getSearch() async {
    var response;
    bool statusGetJsonComplete = false;
    String keywordSearch = myController.text;
    String url =
        'https://api.nytimes.com/svc/movies/v2/reviews/search.json?query=' +
            keywordSearch +
            '&api-key=YmkPGJFtPedmRky3ok4uUE0kHaWcxhOL';
    msgToUser = '';

    try {
      response = await http.get(url);
      if (response.statusCode == 200) {
        statusGetJsonComplete = true;
      } else {
        msgToUser =
            'ERROR! Connection StatusCode = ' + response.statusCode.toString();
      }
    } catch (e) {
      statusGetJsonComplete = false;
      msgToUser = 'ERROR! of connection to Server.';
    }

    if (statusGetJsonComplete) {
      setState(() {
        jsonResponse = json.decode(response.body);
        if (jsonResponse['status'] == 'OK') {
          if (jsonResponse['num_results'] < 1) {
            msgToUser = '0 item from search : ' + keywordSearch;
          } else {
            msgToUser = jsonResponse['num_results'].toString() +
                ' item from search : ' +
                keywordSearch;
          }
          isLoading = false;
        } else {
          msgToUser = 'Status JSON != OK';
        }
      });
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        title: TextFormField(
          controller: myController,
          autofocus: true,
          keyboardType: TextInputType.text,
          onFieldSubmitted: (text) {
            if (myController.text != '') {
              setState(() {
                isFirstRun = false;
                isLoading = true;
              });
              getSearch();
            } else {
              setState(() {
                msgToUser = '';
              });
            }
          },
          onEditingComplete: () {
            setState(() {
              if (myController.text != '') {
                setState(() {
                  isFirstRun = false;
                  isLoading = true;
                });
                getSearch();
              } else {
                setState(() {
                  msgToUser = '';
                });
              }
            });
          },
          decoration: InputDecoration(
            hintText: 'Search',
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              if (myController.text != '') {
                setState(() {
                  isFirstRun = false;
                  isLoading = true;
                });
                getSearch();
              } else {
                setState(() {
                  msgToUser = '';
                });
              }
            },
          )
        ],
      ),
      body: isLoading == true
          ? Center(
              child: isFirstRun != true
                  ? CircularProgressIndicator()
                  : Container())
          : Column(
              children: <Widget>[
                ListTile(
                  title: Text(msgToUser),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: jsonResponse['num_results'],
                    itemBuilder: (BuildContext context, int i) {
                      return Column(
                        children: <Widget>[
                          ListTile(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TestShowItem3(
                                    title: jsonResponse['results'][i]
                                            ['display_title']
                                        .toString(),
                                    detail: jsonResponse['results'][i]
                                            ['headline']
                                        .toString(),
                                  ),
                                ),
                              );
                            },
//                      leading: CircleAvatar(
//                        backgroundColor: Colors.transparent,
//                        backgroundImage: NetworkImage(
//                            jsonResponse['results'][i]['multimedia']['src']),
//                      ),
                            title: Text(
                              '${jsonResponse['results'][i]['display_title'].toString()}',
                              style: TextStyle(fontSize: 20.0),
                            ),
                            subtitle: Text(
                                '${jsonResponse['results'][i]['headline'].toString()}'),
                            trailing: Icon(Icons.keyboard_arrow_right),
                          ),
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
    );
  }
}
