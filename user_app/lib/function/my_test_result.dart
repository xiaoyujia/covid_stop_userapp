import 'package:flutter/material.dart';
import 'package:covid_stop/home.dart';

class TestResult extends StatelessWidget {

  static const routeName = '/test';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Test Result'),
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
            'No Test Result Available'
        ),
      ),
    );
  }
}
