import 'package:flutter/material.dart';
import 'package:knqa_app/screens/drawer/accountname.dart';
import 'package:knqa_app/screens/drawer/avatar.dart';
import 'package:knqa_app/screens/login/login.dart';

class SystemDrawer {
  Widget sidebar(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // UserAccountsDrawerHeader(
          //     otherAccountsPictures: [
          //       IconButton(
          //           icon: Icon(Icons.settings, color: Colors.white, size: 30),
          //           onPressed: () {
          //             Navigator.push(context,
          //                 MaterialPageRoute(builder: (context) => Login()));
          //           })
          //     ],
          //     currentAccountPicture: Avatar(),
          //     accountName: Accountname(),
          //     accountEmail: null),
          Container(
            padding: EdgeInsets.all(5),
            child: ListTile(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              leading: Icon(
                Icons.home,
                color: Colors.deepPurple[700],
              ),
              title: Text(
                'Home',
                style: TextStyle(
                    color: Colors.deepPurple[700], fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: ListTile(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              leading: Icon(
                Icons.account_circle_outlined,
                color: Colors.deepPurple[700],
              ),
              title: Text(
                'My profile',
                style: TextStyle(
                    color: Colors.deepPurple[700], fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: ListTile(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              leading: Icon(
                Icons.people_outlined,
                color: Colors.deepPurple[700],
              ),
              title: Text(
                'My Applications',
                style: TextStyle(
                    color: Colors.deepPurple[700], fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: ListTile(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              leading: Icon(
                Icons.create_new_folder_outlined,
                color: Colors.deepPurple[700],
              ),
              title: Text(
                'My Certificates',
                style: TextStyle(
                    color: Colors.deepPurple[700], fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: ListTile(
              onTap: () {},
              leading: Icon(
                Icons.notifications,
                color: Colors.deepPurple[700],
              ),
              title: Text(
                'Notifications',
                style: TextStyle(
                    color: Colors.deepPurple[700], fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
    );
  }
}
