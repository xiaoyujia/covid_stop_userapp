import 'package:flutter/material.dart';
import 'package:covid_stop/home.dart';

class QRCode extends StatelessWidget {

  static const routeName = '/qr';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code'),
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
        child: Image(
          image: AssetImage(
              'assets/qr_demo.jpg'
          )
        )
      ),
    );
  }
}
