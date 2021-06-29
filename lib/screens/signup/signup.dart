import 'package:flutter/material.dart';
import 'package:knqa_app/screens/onboarding/onboarding.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
            height: phoneheight / 13,
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
            height: phoneheight / 8,
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
                    "Step 1 of 3",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.green),
                  ),
                  Text(
                    "Create account .",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple[700]),
                  ),
                ],
              )),
            )),
        Row(children: <Widget>[
          Expanded(
            child: new Container(
                margin: const EdgeInsets.only(right: 2.0),
                child: Divider(
                  color: Colors.green,
                  height: 5,
                  thickness: 3,
                )),
          ),
          Expanded(
            child: new Container(
                margin: const EdgeInsets.only(right: 2.0),
                child: Divider(
                  color: Colors.black,
                  height: 5,
                  thickness: 3,
                )),
          ),
          Expanded(
            child: new Container(
                margin: const EdgeInsets.only(right: 0.0),
                child: Divider(
                  color: Colors.black,
                  height: 5,
                  thickness: 3,
                )),
          ),
        ]),
        Container(
            width: phonewidth,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: phonewidth / 5,
                          width: phonewidth / 5,
                          decoration: BoxDecoration(
                            color: Colors.pink[50],
                          ),
                          child: Icon(
                            Icons.account_circle_outlined,
                            size: 70,
                            color: Colors.grey,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Upload profile picture *",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                            ButtonTheme(
                              child: RaisedButton(
                                color: Colors.green[700],
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    side: BorderSide(color: Colors.lightBlue)),
                                child: Text(
                                  'Upload',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              "Surname *",
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
                                    labelText: "Surname",
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
                              "First name *",
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
                                    labelText: "First name",
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
                              "Other name ",
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
                                    labelText: "Other name",
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
                              "identification number/Passport *",
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
                                    labelText: "ID/Passport",
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
                    padding: const EdgeInsets.only(top: 40, left: 190),
                    child: ButtonTheme(
                      child: RaisedButton(
                        color: Colors.deepPurple[600],
                        onPressed: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (BuildContext context) => Login()));
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Text(
                          'NEXT',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )),
        _loader(context),
      ],
    ));
  }
}
