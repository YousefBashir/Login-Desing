import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState();
  }
}

class LoginState extends State<Login> {
  TextEditingController _userName = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  void clear(){
    setState(() {
      _userName.clear();
      _password.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: new Text(
          "Login",
          style: new TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 28.2,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
      backgroundColor: Colors.grey.shade300,
      body: new Container(
        alignment: Alignment.topCenter,
        child: new Column(
          children: [
            new Image.asset(
              'images/logo.png',
              width: 90.0,
              height: 90.0,
            ),
            new Container(
              height: 180,
              width: 380,
              child: new Column(
                children: [
                  new TextField(
                    controller: _userName,
                    decoration: new InputDecoration(
                      hintText: "Enter your user name",
                      icon: new Icon(Icons.person),
                    ),
                  ),
                  new TextField(
                    obscureText: true,
                      controller: _password,
                      decoration: new InputDecoration(
                        hintText: "Enter your password",
                        icon: new Icon(Icons.lock),

                      )),
                  new Padding(padding: new EdgeInsets.only(top: 20)),
                  new Center(

                      child: new Row(
                        children: [
                          new Container(
                            margin: const EdgeInsets.only(left: 37.0),
                            child: new RaisedButton(
                              onPressed: () => debugPrint("Submitted"),
                              color: Colors.redAccent,
                              child: new Text(
                                "Submit",
                                style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontStyle: FontStyle.italic),
                              ),
                            ),
                          ),
                          new Container(
                            margin: const EdgeInsets.only(left: 155.0),
                            child: new RaisedButton(
                              onPressed: clear,
                              color: Colors.redAccent,
                              child: new Text(
                                "Clear",
                                style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontStyle: FontStyle.italic),
                              ),
                            ),
                          ),



                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
