import 'package:flutter/material.dart';
import 'package:knqa_app/screens/drawer/drawer.dart';
import 'package:knqa_app/screens/signup/signup_2.dart';
import 'package:knqa_app/utilities/assets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool loader = false;
  String dialcode = "254", qual = "";
  String phone = "";
  double phoneheight = 0;
  double phonewidth = 0;
  FocusNode _focus = new FocusNode();
  String message = '';
  Map response = new Map();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  List<String> quals = [
    "Choose qualification here ...",
  ];
  String selectedQual = "Choose qualification here ...";

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
        drawer: SystemDrawer().sidebar(context),
        body: ListView(
          children: <Widget>[
            Container(
                height: phoneheight / 8,
                width: phonewidth,
                decoration: BoxDecoration(
                  color: Colors.pink[50],
                ),
                child: Row(
                  children: [
                    Builder(builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: IconButton(
                          splashColor: Colors.black,
                          icon: Icon(
                            Icons.menu,
                            size: 30,
                          ),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                        ),
                      );
                    }),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Image.asset(
                        logo,
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 120),
                      child: IconButton(
                        splashColor: Colors.black,
                        icon: Icon(
                          Icons.account_circle_outlined,
                          size: 30,
                        ),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: IconButton(
                        splashColor: Colors.black,
                        icon: Icon(
                          Icons.notification_add_sharp,
                          size: 30,
                        ),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                      ),
                    )
                  ],
                )),
            Container(
                width: phonewidth,
                decoration: BoxDecoration(
                  color: Colors.pink[50],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "What qualification do you want to be assessed on?",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.deepPurple[700]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                        child: Container(
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(style: BorderStyle.none),
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
                            value: selectedQual,
                            onChanged: (newValue) {
                              setState(() {
                                qual = selectedQual;
                              });
                            },
                            items: quals.map((qua) {
                              return DropdownMenuItem(
                                child: new Text(qua),
                                value: qua,
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          onPressed: submit,
                          color: Colors.green[900],
                          minWidth: phonewidth,
                          child: Text(
                            'Check requirements',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Container(
              width: phonewidth,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            _loader(context),
          ],
        ));
  }
}
