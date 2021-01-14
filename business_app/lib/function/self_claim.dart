import 'package:flutter/material.dart';
import 'package:covid_stop/home.dart';

class SelfClaim extends StatefulWidget{

  static const routeName = '/claim';

  @override
  _SelfClaim createState() => _SelfClaim();
}

class _SelfClaim extends State<SelfClaim> {

  DateTime date = DateTime.now();
  bool tested = false;
  String elsewhere;

  Future<Null> pickDate(BuildContext context) async{
    DateTime dateTime = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(2019),
        lastDate: DateTime.now());
  }

  Future<void> _submit() async {
    if(date != null){
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Self Claim'),
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
          Padding(
            padding: EdgeInsets.all(18),
            child: TextFormField(
              readOnly: true,
              decoration: InputDecoration(
                  labelText: 'Please Pick the Date',
                  hintText: (date.toString())
              ),

              onTap: (){
                setState(() {
                  pickDate(context);
                });
              },


            ),
          ),

          Padding(
              padding: EdgeInsets.all(18),
              child: CheckboxListTile(
                  title: Text('Tested Positive? '),
                  value: tested,
                  onChanged: (bool test){
                    setState(() {
                      tested = test;
                    });
                  })

          ),

          Padding(
            padding: EdgeInsets.all(18),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Anywhere else you want to add?'
              ),
              onSaved: (String s){
                setState(() {
                  elsewhere = s;
                });
              },
            ),
          ),

          Padding(
            padding: EdgeInsets.all(18),
            child: Text(
                '* By submit the form, NO personal information or location records will be seen by any other users.'
            ),

          ),

          RaisedButton(
            child: Text('Submit'),
            color: Colors.lightGreen,

            onPressed: (){
              Navigator.of(context).pushReplacementNamed(Home.routeName);

            },
          )

        ],
      ),
    );
  }
}
