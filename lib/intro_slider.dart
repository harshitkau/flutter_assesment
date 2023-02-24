import 'package:flutter/material.dart';
import 'package:flutter_assesment/pages/login.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'button.dart';

class SliderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Welcome to Intro app Screen',
              body: 'Harshit Kumar Kaushal.',
              image: buildImage('assets/images/img2.jpg'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Flutter App Screen',
              body: 'Flutter is awesome',
              image: buildImage('assets/images/img3.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Awesome App',
              body: 'This is an awesome app',
              image: buildImage('assets/images/img4.png'),
              decoration: getPageDecoration(),
            ),
          ],
          done: Text('Finish',
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: Text('Skip', style: TextStyle(color: Colors.white)),
          onSkip: () => goToHome(context),
          next: Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: Theme.of(context).primaryColor,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => Login()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        activeColor: Colors.white,
        size: Size(10, 10),
        activeSize: Size(15, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}
