import 'package:flutter/material.dart';
import 'package:texas_relief/authentication_service.dart';
import 'package:provider/provider.dart';
import 'package:texas_relief/signUpPage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  String email, password;
  bool login = true;
  @override
  Widget build(BuildContext context) {
    return login
        ? Scaffold(
            body: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                Colors.blue[900],
                Colors.blue[800],
                Colors.blue[400],
              ])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Login🏢",
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Welcome Back",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              topRight: Radius.circular(60))),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 60,
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.blue[900], width: 2),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        color: Colors.white70),
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      onChanged: (value) {
                                        email = value.trim();
                                      },
                                      decoration: InputDecoration(
                                          hintText: "Email",
                                          border: InputBorder.none),
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.blue[900], width: 2),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        color: Colors.white70),
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      onChanged: (value) {
                                        password = value;
                                      },
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          hintText: "Password",
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                "Forgot Password?",
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              TextButton(
                                onPressed: () {
                                  context
                                      .read<AuthenticationService>()
                                      .signIn(email: email, password: password);
                                  setState(() {});
                                },
                                child: Container(
                                  height: 50,
                                  width: 150,
                                  margin: EdgeInsets.symmetric(horizontal: 50),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.blue[900]),
                                  child: Center(
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    login = false;
                                  });
                                },
                                child: Text("Sign Up"),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        //signup
        : Scaffold(
            body: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                Colors.blue[900],
                Colors.blue[800],
                Colors.blue[400],
              ])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Hello👋",
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              topRight: Radius.circular(60))),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 60,
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.blue[900], width: 2),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        color: Colors.white70),
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      onChanged: (value) {
                                        email = value.trim();
                                      },
                                      decoration: InputDecoration(
                                          hintText: "Email",
                                          border: InputBorder.none),
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.blue[900], width: 2),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        color: Colors.white70),
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      onChanged: (value) {
                                        password = value;
                                      },
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          hintText: "Password",
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              TextButton(
                                onPressed: () {
                                  context
                                      .read<AuthenticationService>()
                                      .signUp(email: email, password: password);
                                  setState(() {});
                                },
                                child: Container(
                                  height: 50,
                                  width: 150,
                                  margin: EdgeInsets.symmetric(horizontal: 50),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.blue[900]),
                                  child: Center(
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    login = true;
                                  });
                                },
                                child: Text("Sign in"),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
  }
}
