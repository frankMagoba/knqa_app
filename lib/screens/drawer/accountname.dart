import 'package:flutter/material.dart';

class Accountname extends StatefulWidget {
  Accountname({
    Key? key,
  }) : super(key: key);

  @override
  _AccountnameState createState() => _AccountnameState();
}

class _AccountnameState extends State<Accountname> {
  String name = "";
  String lname = "";
  String fullname = "";

  @override
  void initState() {
    getUser();
    super.initState();
  }

  getUser() async {
    setState(() {
      name = "Jane";
      lname = "Doe";
      fullname = '$name $lname';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      fullname,
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.w600, fontSize: 32),
    );
  }
}
