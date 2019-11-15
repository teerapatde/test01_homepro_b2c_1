import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class TestNewsApi1Screen extends StatefulWidget {
  @override
  _TestNewsApi1ScreenState createState() => _TestNewsApi1ScreenState();
}

class _TestNewsApi1ScreenState extends State<TestNewsApi1Screen> {
  var news;
  bool isLoading = true;
  String url =
      'https://newsapi.org/v2/top-headlines?country=th&apiKey=b47993f27ea34436837d5495ef508981';

  Future<Null> getNews() async {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      print(jsonResponse);
      print('GET JSON OK');
      setState(() {
        news = jsonResponse['articles'];
        isLoading = false;
        print('NEWS LENGTH :');
        print(news.length);
      });
    } else {
      print('Connection Status Code != 200');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TEST NEWS API 1'),
      ),
      body: isLoading == false
          ? ListView.builder(
              itemCount: news.length,
              itemBuilder: (context, int index) {
                return Column(
                  children: <Widget>[
                    ListTile(
                      onTap: () {
                        //_AlertBoxDetail(index);
                      },
                      leading: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            NetworkImage(news[index]['urlToImage']),
                      ),
                      title: Text(
                        '${news[index]['title']}',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      subtitle: Text('${news[index]['description']}'),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ],
                );
              },
            )
          : CircularProgressIndicator(),
    );
  }
}
