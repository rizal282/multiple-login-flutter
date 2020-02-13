import 'package:flutter/material.dart';
import 'package:multiple_login/main.dart';

class User extends StatefulWidget {
  final String username;

  User({this.username});
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("User"),
              SizedBox(height: 20,),
              Text("Welcome : ${widget.username}"),
              SizedBox(height: 20,),
              RaisedButton(
                onPressed: (){
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Login())
                  );
                },
                child: Text("Keluar"),
              )
            ],
          ),
        ),
      ),
    );
  }
}