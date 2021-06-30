import 'package:flutter/material.dart';
import 'package:knqa_app/screens/onboarding/onboarding.dart';

class SignUp2 extends StatefulWidget {
  @override
  _SignUp2State createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  bool loader = false;
  bool male = false;
  bool female = false;
  String dialcode = "254";
  String phone = "", month = "";
  double phoneheight = 0;
  double phonewidth = 0;
  FocusNode _focus = new FocusNode();
  String message = '';
  Map response = new Map();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  List<String> _months = [
    "Month",
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  String _selectedMonth = "Month";

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
                    "Step 2 of 3",
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
                  Padding(
                      padding:
                          EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              "Date of Birth *",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 25.0),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            style: BorderStyle.solid),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3.0)),
                                      ),
                                    ),
                                    child: DropdownButton(
                                      dropdownColor: Colors.pink[50],
                                      isExpanded: true,
                                      hint: Text(
                                        'Month',
                                      ),
                                      value: _selectedMonth,
                                      onChanged: (newValue) {
                                        setState(() {
                                          month = _selectedMonth;
                                        });
                                      },
                                      items: _months.map((mon) {
                                        return DropdownMenuItem(
                                          child: new Text(mon),
                                          value: mon,
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: TextFormField(
                                      controller: phoneController,
                                      decoration: InputDecoration(
                                        fillColor:
                                            Colors.white54.withOpacity(0.3),
                                        filled: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 2.0, horizontal: 10.0),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.deepPurple,
                                              width: 3.0),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black, width: 0.0),
                                        ),
                                        border: OutlineInputBorder(),
                                        labelText: "Day",
                                        labelStyle: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "sf-ui",
                                            fontSize: 14),
                                      ),
                                      enabled: true,
                                      autofocus: true,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller: phoneController,
                                    decoration: InputDecoration(
                                      fillColor:
                                          Colors.white54.withOpacity(0.3),
                                      filled: true,
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 2.0, horizontal: 10.0),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.deepPurple,
                                            width: 3.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 0.0),
                                      ),
                                      border: OutlineInputBorder(),
                                      labelText: "Year",
                                      labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "sf-ui",
                                          fontSize: 14),
                                    ),
                                    enabled: true,
                                    autofocus: true,
                                  ),
                                ),
                              ],
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
                              "Gender *",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 25.0, top: 12.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: CheckboxListTile(
                                    title: const Text('Male'),
                                    value: male,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        male = value!;
                                      });
                                    },
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                  ),
                                ),
                                Expanded(
                                  child: CheckboxListTile(
                                    title: const Text('Female'),
                                    value: female,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        female = value!;
                                      });
                                    },
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                  ),
                                ),
                              ],
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
                              "Phone number *",
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
                                    labelText: "+xxx 0000 000 000",
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
                              "Email address",
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
                                    labelText: "john@doe.com",
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
