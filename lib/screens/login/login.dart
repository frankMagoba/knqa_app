import 'package:flutter/material.dart';
import 'package:knqa_app/screens/onboarding/onboarding.dart';
import 'package:knqa_app/screens/signup/signup_1.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool loader = false;
  String dialcode = "254";
  String phone = "";
  double phoneheight = 0;
  double phonewidth = 0;
  FocusNode _focus = new FocusNode();
  String message = '';
  Map response = new Map();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _focus.addListener(_onFocusChange);
  }

  void _onFocusChange() {}
  Future<void> submit() async {}

  Widget _loader(context) {
    if (loader == true) {
      return new Center(
        child: new Text('Loading'),
      );
    } else {
      return new Center(
        child: new Text(''),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    phoneheight = MediaQuery.of(context).size.height;
    phonewidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Container(
            height: phoneheight / 8,
            width: phonewidth,
            decoration: BoxDecoration(
              color: Colors.pink[50],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => OnboardingScreen()));
                  },
                  child: CircleAvatar(
                      radius: 14,
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.arrow_back_rounded,
                        size: 20,
                        color: Colors.white,
                      )),
                ),
              ),
            )),
        Container(
            height: phoneheight / 7,
            width: phonewidth,
            decoration: BoxDecoration(
              color: Colors.pink[50],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                  child: Column(
                children: [
                  Text(
                    "Log in .",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple[700]),
                  ),
                  Text(
                    "Fill the form below to Log in",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  )
                ],
              )),
            )),
        Container(
            height: phoneheight * 0.732142857,
            width: phonewidth,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Padding(
                      padding:
                          EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              "Phone",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Flexible(
                                child: TextFormField(
                                  controller: phoneController,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white54.withOpacity(0.3),
                                    filled: true,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 2.0, horizontal: 10.0),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.deepPurple, width: 3.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 0.0),
                                    ),
                                    border: OutlineInputBorder(),
                                    labelText: "Phone",
                                    labelStyle: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "sf-ui",
                                        fontSize: 14),
                                  ),
                                  enabled: true,
                                  autofocus: true,
                                  onChanged: (String value) {
                                    phone = value.trim();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              "Password",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Flexible(
                                child: TextFormField(
                                  controller: phoneController,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white54.withOpacity(0.3),
                                    filled: true,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 2.0, horizontal: 10.0),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.deepPurple, width: 3.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 0.0),
                                    ),
                                    border: OutlineInputBorder(),
                                    labelText: "Password",
                                    labelStyle: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "sf-ui",
                                        fontSize: 14),
                                  ),
                                  enabled: true,
                                  autofocus: true,
                                  onChanged: (String value) {
                                    phone = value.trim();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 40),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      onPressed: submit,
                      color: Color(0xfff78a00),
                      minWidth: 300,
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      "Forgot Password!",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.deepPurple[700]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Text(
                      "Don't have account yet",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => SignUp()));
                      },
                      child: Text(
                        "Create account",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.deepPurple[700]),
                      ),
                    ),
                  ),
                ],
              ),
            )),
        _loader(context),
      ],
    ));
  }
}
