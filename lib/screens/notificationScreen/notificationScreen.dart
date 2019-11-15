import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  int cntNotification = 10;
  List<Map<String, String>> listNotification = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < cntNotification; i++) {
      listNotification.add({'title': 'Title $i', 'detail': 'Detail $i'});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Notification'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.delete_forever,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                cntNotification = 0;
              });
            },
          ),
          SizedBox(
            width: 23,
          ),
        ],
      ),
      body: cntNotification > 0
          ? ListView.builder(
              itemCount: cntNotification,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 100,
                  //color: Colors.orange,
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(listNotification[index]['title']),
                        Text(listNotification[index]['detail']),
                      ],
                    ),
                  ),
                );
              },
            )
          : Center(
              child: Text('Not have notification.'),
            ),
    );
  }
}
