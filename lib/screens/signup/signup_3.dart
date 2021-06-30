import 'package:flutter/material.dart';
import 'package:knqa_app/screens/signup/signup_2.dart';

class SignUp3 extends StatefulWidget {
  @override
  _SignUp3State createState() => _SignUp3State();
}

class _SignUp3State extends State<SignUp3> {
  bool loader = false;
  bool male = false;
  bool female = false;
  String dialcode = "254";
  String phone = "", country = "";
  double phoneheight = 0;
  double phonewidth = 0;
  FocusNode _focus = new FocusNode();
  String message = '';
  Map response = new Map();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  List<String> _countries = [
    "Select Country",
  ];
  String _selectedCountry = "Select Country";

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
                        builder: (BuildContext context) => SignUp2()));
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
                    "Step 3 of 3",
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
                  color: Colors.green,
                  height: 5,
                  thickness: 3,
                )),
          ),
          Expanded(
            child: new Container(
                margin: const EdgeInsets.only(right: 0.0),
                child: Divider(
                  color: Colors.green,
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
                  Padding(
                      padding:
                          EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              "Work *",
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
                                    labelText: "Occupation",
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
                              "Nationality *",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                          ),
                          Container(
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(style: BorderStyle.solid),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3.0)),
                              ),
                            ),
                            child: DropdownButton(
                              dropdownColor: Colors.pink[50],
                              isExpanded: true,
                              hint: Text(
                                'Select Country',
                              ),
                              value: _selectedCountry,
                              onChanged: (newValue) {
                                setState(() {
                                  country = _selectedCountry;
                                });
                              },
                              items: _countries.map((con) {
                                return DropdownMenuItem(
                                  child: new Text(con),
                                  value: con,
                                );
                              }).toList(),
                            ),
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
                              "Physical Address *",
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
                                    labelText: "Place of Residence",
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
                              "Postal address",
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
                                    labelText: "000000 - 000000",
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
                              "Password *",
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
                                    labelText: "**********",
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
                              "Confirm password *",
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
                                    labelText: "**********",
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
