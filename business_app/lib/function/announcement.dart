import 'package:flutter/material.dart';
import 'package:covid_stop/home.dart';

class Announcement extends StatelessWidget {

  static const routeName = '/announcement';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Announcement'),
        actions: <Widget>[
          FlatButton(
            child: Row(
                children: <Widget>[
                  Text('Back'),
                ]
            ),
            onPressed: (){
              Navigator.of(context).pushReplacementNamed(Home.routeName);
            },
          )
        ],
      ),
      body: Center(
        child: Text(
          'No Announcement Available'
        ),
      ),
    );
  }
}
