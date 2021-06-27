import 'package:flutter/material.dart';
import 'package:knqa_app/screens/onboarding/onboarding.dart';
import 'package:flutter/foundation.dart' as Foundation;

void main() => runApp(SplashOnboarding());

class SplashOnboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}

Widget errorScreen(dynamic detailsException) {
  return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Error'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child:
            //Check is it release mode
            Foundation.kReleaseMode
                //Widget for release mode
                ? Center(
                    child: Text(
                      'Server Error, sorry for inconvenience',
                      style: TextStyle(fontSize: 24.0),
                    ),
                  )
                //Widget for debug mode
                : SingleChildScrollView(
                    child: Text('Exeption Details:\n\n$detailsException')),
      ));
}
