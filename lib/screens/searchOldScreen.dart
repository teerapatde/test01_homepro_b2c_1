import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CustomSearchDelegate extends SearchDelegate {
  int cnt = 0;
  var jsonResponse = null;

  Future<Null> getJsons() async {
    cnt = 0;
    print('## Started FN : getJsons');
    String keywordSearch = query;
    String url =
        'https://api.nytimes.com/svc/movies/v2/reviews/search.json?query=' +
            keywordSearch +
            '&api-key=YmkPGJFtPedmRky3ok4uUE0kHaWcxhOL';
    print('## Start HTTP.GET -> ' + url.toString());
    var response;
    bool statusGetJsonComplete = true;

    try {
      response = await http.get(url);
    } catch (e) {
      statusGetJsonComplete = false;
      print('## ERROR! of HTTP.GET');
    }

    if (statusGetJsonComplete) {
      print('## Status Code : ' + response.statusCode.toString());
      if (response.statusCode == 200) {
        jsonResponse = json.decode(response.body);
        //print(jsonResponse['results']);
        cnt = jsonResponse['num_results'];
        for (int i = 0; i < jsonResponse['num_results']; i++) {
          print(i.toString() +
              ' ' +
              jsonResponse['results'][i]['display_title'].toString());
        }
        print('CNT Of Data : ' + jsonResponse['num_results'].toString());
      }
    }
    print('## END FN : getJsons');
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
//      IconButton(
//        icon: Icon(Icons.search),
//        onPressed: () {
//          //query = '';
//        },
//      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    getJsons();
    if (query.length < 3) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              "Search term must be longer than two letters.",
            ),
          )
        ],
      );
    } else {
      return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int i) {
          return Column(
            children: <Widget>[
              Text(jsonResponse['results'][i]['display_title'].toString()),
            ],
          );
        },
      );
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Column();
  }
}
