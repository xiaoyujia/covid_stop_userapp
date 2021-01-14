import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covid_stop/home.dart';
import 'package:covid_stop/login/login.dart';

class Signup extends StatefulWidget {
  static const routeName = '/signup';

  @override
  _Signup createState() => _Signup();
}

class _Signup extends State<Signup> with SingleTickerProviderStateMixin {

  final GlobalKey<FormState> _key = GlobalKey();
  TextEditingController _passwordController = new TextEditingController();

  Map<String, String> _signupData = {'email' : '', 'password': ''};

  Future<void> _signup() async {
    if (!_key.currentState.validate()){return;}
    _key.currentState.save();

    Navigator.of(context).pushReplacementNamed(Home.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Signup'),

        ),
        body: Stack(
          children: <Widget>[
            Center(
              child: Card(
                //color: Colors.lightGreen,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  height: 310,
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
                                _signupData['email'] = email;
                              },
                            ),

                            //password
                            TextFormField(
                              decoration: InputDecoration(labelText: 'Password'),
                              obscureText: true,
                              controller: _passwordController,
                              validator: (passed){
                                if(passed.length < 6){
                                  return 'Invalid Password.';
                                }
                                return null;
                              },
                              onSaved: (passwd){
                                _signupData['password'] = passwd;
                              },
                            ),
                            //password confirmation
                            TextFormField(
                              decoration: InputDecoration(labelText: 'Password Confirmation'),
                              obscureText: true,
                              validator: (confirm){
                                if(confirm != _passwordController.text){
                                  return 'Password does not match.';
                                }
                                return null;
                              },
                              onSaved: (passwd){
                                _signupData['password'] = passwd;
                              },
                            ),

                            RaisedButton(
                              color: Colors.lightGreen,
                              child: Text('Signup'),
                              onPressed: (){
                                _signup();
                              },
                            ),
                            RaisedButton(
                              child: Text('Back'),
                              onPressed: (){
                                Navigator.of(context).pushReplacementNamed(Login.routeName);
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

