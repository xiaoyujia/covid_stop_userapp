import 'package:flutter/material.dart';
import 'package:covid_stop/home.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'dart:async';


class QRCode extends StatefulWidget {
  static const routeName = '/qr';

  @override
  _QRCode createState() => _QRCode();
}

class _QRCode extends State<QRCode> {

  String output = 'Please Start Scanning';

  Future _scan() async{
    try{
      //String qr = await FlutterBarcodeScanner.scanBarcode('#ff6666', 'Cancel', true, ScanMode.DEFAULT);
      setState(() {
        //output = qr;

      });
    }catch(error){
      if(error != null){
        setState(() {
          output = "Error: $error";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Scan'),
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
        child: Column(
          children: [
            SizedBox(height: 300),
            Text(
              output
            ),
            SizedBox(height: 50),
            RaisedButton(
              color: Colors.lightGreen,
              child: Text("Scan"),
              onPressed: () {
                _scan();
              },
            )
          ],
        )
      ),
    );
  }
}
