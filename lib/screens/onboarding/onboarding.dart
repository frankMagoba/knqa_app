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
    print("height");
    print(phoneheight);
    print("width");
    print(phonewidth);
    print("_welcomeHeight");
    print(_welcomeHeight);
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
              ImageHandler(logo)
            ],
          ),
          Positioned(
            top: (310 / 683) * MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Row(children: [
                            SizedBox(
                              width: (140 / 360) *
                                  MediaQuery.of(context).size.width,
                            ),
                            for (int i = 0; i < _totalPages; i++)
                              i == _currentPage
                                  ? PageIndicator(true)
                                  : PageIndicator(false)
                          ]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (_currentPage == 0)
            Positioned(
              top: (350 / 683) * MediaQuery.of(context).size.height,
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
                            const EdgeInsets.only(left: 16, right: 16, top: 0),
                        child: Text(
                          "Welcome to the KNQA Recognition of Prior Learning Portal",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 0, bottom: 20),
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
                        padding: const EdgeInsets.only(
                            top: 0.0, left: 16, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: ButtonTheme(
                                height: (50 / 683) *
                                    MediaQuery.of(context).size.height,
                                child: RaisedButton(
                                  color: Colors.white,
                                  onPressed: () {
                                    // Navigator.of(context).push(
                                    //     MaterialPageRoute(
                                    //         builder: (BuildContext context) =>
                                    //             Welcome()));
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      side: BorderSide(color: Colors.blue)),
                                  child: Text(
                                    'Create Account',
                                    style: TextStyle(
                                      color: Colors.blue,
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
                                height: (50 / 683) *
                                    MediaQuery.of(context).size.height,
                                child: RaisedButton(
                                  color: Colors.blue,
                                  onPressed: () {
                                    // _pageController.animateToPage(
                                    //     _currentPage + 1,
                                    //     duration: Duration(milliseconds: 400),
                                    //     curve: Curves.linear);
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      side:
                                          BorderSide(color: Colors.lightBlue)),
                                  child: Text(
                                    'Login',
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
              top: (350 / 683) * MediaQuery.of(context).size.height,
              child: Container(
                height: (300 / 592) * MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 16, right: 16, top: 0),
                        child: Text(
                          "Sewage water",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 16, right: 16, top: 0),
                        child: Text(
                          "Services",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, top: 0, bottom: 20),
                        child: Text(
                          "Sewage disposal services for offices and residential properties",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 0.0, left: 16, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: ButtonTheme(
                                height: (50 / 683) *
                                    MediaQuery.of(context).size.height,
                                child: RaisedButton(
                                  color: Colors.white,
                                  onPressed: () {
                                    // Navigator.of(context).push(
                                    //     MaterialPageRoute(
                                    //         builder: (BuildContext context) =>
                                    //             Welcome()));
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      side: BorderSide(color: Colors.blue)),
                                  child: Text(
                                    'Skip',
                                    style: TextStyle(
                                      color: Colors.blue,
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
                                height: (50 / 683) *
                                    MediaQuery.of(context).size.height,
                                child: RaisedButton(
                                  color: Colors.blue,
                                  onPressed: () {
                                    _pageController.animateToPage(
                                        _currentPage + 1,
                                        duration: Duration(milliseconds: 400),
                                        curve: Curves.linear);
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      side:
                                          BorderSide(color: Colors.lightBlue)),
                                  child: Text(
                                    'Next',
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
