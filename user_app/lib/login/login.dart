import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covid_stop/home.dart';
import 'package:covid_stop/login/signup.dart';


class Login extends StatefulWidget {
  static const routeName = '/login';

  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> with SingleTickerProviderStateMixin {

  final GlobalKey<FormState> _key = GlobalKey();

  Map<String, String> _loginData = {'email' : '', 'password': ''};

  Future<void> _login() async {
    if(!_key.currentState.validate()){
      return;
    }
    _key.currentState.save();

    Navigator.of(context).pushReplacementNamed(Home.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('COVID STOP'),

      ),
      body: Stack(
       children: <Widget>[
         Center(
           child: Card(
             //color: Colors.lightGreen,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(20),
             ),
             child: Container(
               height: 250,
               width: 340,
               padding: EdgeInsets.all(20),
               child: Form(
                 key: _key,
                 child: SingleChildScrollView(
                   child: Column(
                     children: [
                       //email
                       TextFormField(
                         decoration: InputDecoration(labelText: 'Email'),
                         keyboardType: TextInputType.emailAddress,
                         validator: (email){
                           if(email.isEmpty){
                             return 'Please enter your email.';
                           }
                           else if (!email.contains('@')){
                             return 'Invalid email type.';
                           }
                           return null;
                         },
                         onSaved: (email){
                           _loginData['email'] = email;
                         },
                       ),

                       //password
                       TextFormField(
                         decoration: InputDecoration(labelText: 'Password'),
                         obscureText: true,
                         validator: (password){
                           if(password.length <= 6){
                             return 'Invalid Password.';
                           }
                           return null;
                         },
                         onSaved: (password){
                           _loginData['password'] = password;
                         },
                       ),
                       RaisedButton(
                         color: Colors.lightGreen,
                         child: Text('Login'),
                         onPressed: (){
                           _login();

                         },
                       ),
                       RaisedButton(
                         child: Text('Signup'),
                         onPressed: (){
                           Navigator.of(context).pushReplacementNamed(Signup.routeName);
                         },
                       )
                     ],
                   ),
                 )
               ),

             ),
           ),
         )
       ],
      )
    );
  }
}

