import 'package:flutter/material.dart';
import 'package:covid_stop/home.dart';

class MyStatus extends StatelessWidget {

  static const routeName = '/status';

  //0:green, 1: yellow, 2: red
  int status = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Store Status'),
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

      body: Column(
        children: <Widget>[
          SizedBox(
            height: 200,
          ),

          Center(
            child: Container(
              height: 100,
              width: 340,
              padding: EdgeInsets.all(10),
              color: Colors.lightGreen,
            ),
          ),

          SizedBox(
            height: 260,
          ),

          Text('Green: Safe.'),
          Text('Yellow: Close contact with infected personnel within 14 days.'),
          Text('Red: infected.')


        ],
      )
    );
  }
}
