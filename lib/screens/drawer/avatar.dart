import 'package:flutter/material.dart';

class Avatar extends StatefulWidget {
  Avatar({
    Key? key,
  }) : super(key: key);

  @override
  _AvatarState createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  String pic = "";

  @override
  void initState() {
    getUser();
    super.initState();
  }

  getUser() async {
    setState(() {
      pic = "https://picsum.photos/250?image=9";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        image: DecorationImage(image: NetworkImage(pic), fit: BoxFit.cover),
        borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
        border: new Border.all(
          color: Colors.white,
          width: 2.0,
        ),
      ),
    );
  }
}
