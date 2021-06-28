import 'package:flutter/material.dart';
import 'package:knqa_app/screens/onboarding/bottombar.dart';
import 'package:knqa_app/screens/onboarding/pageindicator.dart';
import 'package:knqa_app/utilities/assets.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  int _welcomeHeight = 0;
  double phoneheight = 0;
  double phonewidth = 0;
  bool loader = false;
  String dialcode = "+254";
  String message = '';
  Map response = new Map();
  String background = "";

  final int _totalPages = 2;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

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
      body: Stack(
        children: <Widget>[
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              _currentPage = page;
              setState(() {});
            },
            children: <Widget>[
              ImageHandler(logo),
              ImageHandler(logo),
            ],
          ),
          Positioned(
            bottom: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 170),
              child: Column(
                children: [
                  Row(
                    children: [
                      for (int i = 0; i < _totalPages; i++)
                        i == _currentPage
                            ? PageIndicator(true)
                            : PageIndicator(false)
                    ],
                  ),
                ],
              ),
            ),
          ),
          if (_currentPage == 0)
            Positioned(
                bottom: 50,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 165),
                  child: GestureDetector(
                    onTap: () {
                      _pageController.animateToPage(_currentPage + 1,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.linear);
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "NEXT  ",
                          ),
                          WidgetSpan(
                            child: CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.white,
                                child: Icon(Icons.arrow_forward_rounded,
                                    size: 14)),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
          if (_currentPage == 0)
            Positioned(
              bottom: 150,
              child: Container(
                height: (300 / 592) * MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 0),
                        child: Text(
                          "Welcome to",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 10),
                        child: Text(
                          "the KNQA",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 10),
                        child: Text(
                          "Recognition of",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 10),
                        child: Text(
                          "Prior Learning",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 10),
                        child: Text(
                          "Portal .",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30, right: 30, top: 20, bottom: 20),
                        child: Text(
                          "Get your qualification here",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 30, left: 16, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: ButtonTheme(
                                child: RaisedButton(
                                  color: Colors.orange,
                                  onPressed: () {
                                    // Navigator.of(context).push(
                                    //     MaterialPageRoute(
                                    //         builder: (BuildContext context) =>
                                    //             Welcome()));
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      side: BorderSide(color: Colors.blue)),
                                  child: Text(
                                    'Create Account',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                                width: (13 / 411) *
                                    MediaQuery.of(context).size.width),
                            Expanded(
                              child: ButtonTheme(
                                child: RaisedButton(
                                  color: Colors.deepPurple[600],
                                  onPressed: () {
                                    // _pageController.animateToPage(
                                    //     _currentPage + 1,
                                    //     duration: Duration(milliseconds: 400),
                                    //     curve: Curves.linear);
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      side:
                                          BorderSide(color: Colors.lightBlue)),
                                  child: Text(
                                    'Log in',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          if (_currentPage == 1)
            Positioned(
                bottom: 50,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 165),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "NEXT  ",
                        ),
                        WidgetSpan(
                          child: CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.white,
                              child:
                                  Icon(Icons.arrow_forward_rounded, size: 14)),
                        ),
                      ],
                    ),
                  ),
                )),
          if (_currentPage == 1)
            Positioned(
              bottom: 150,
              child: Container(
                height: (300 / 592) * MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 30, left: 16, right: 16, bottom: 20),
                        child: Container(
                          height: phoneheight / 3,
                          width: phonewidth,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 30, left: 16, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: ButtonTheme(
                                child: RaisedButton(
                                  color: Colors.orange,
                                  onPressed: () {
                                    // Navigator.of(context).push(
                                    //     MaterialPageRoute(
                                    //         builder: (BuildContext context) =>
                                    //             Welcome()));
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      side: BorderSide(color: Colors.blue)),
                                  child: Text(
                                    'Create Account',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                                width: (13 / 411) *
                                    MediaQuery.of(context).size.width),
                            Expanded(
                              child: ButtonTheme(
                                child: RaisedButton(
                                  color: Colors.deepPurple[600],
                                  onPressed: () {
                                    // _pageController.animateToPage(
                                    //     _currentPage + 1,
                                    //     duration: Duration(milliseconds: 400),
                                    //     curve: Curves.linear);
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      side:
                                          BorderSide(color: Colors.lightBlue)),
                                  child: Text(
                                    'Log in',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          _loader(context),
        ],
      ),
    );
  }
}
