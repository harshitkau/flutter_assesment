import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForYou extends StatefulWidget {
  const ForYou({super.key});

  @override
  State<ForYou> createState() => _ForYouState();
}

class _ForYouState extends State<ForYou> {
  double? _devicewidth, _deviceheight;
  @override
  Widget build(BuildContext context) {
    _deviceheight = MediaQuery.of(context).size.height;
    _devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(224, 224, 224, 1),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            height: 220,
            width: double.maxFinite,
            child: Stack(
              children: [
                _element(),
                _element(),
                _element(),
                _element(),
                _element(),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _element() {
    return Stack(children: [
      Container(
        color: Colors.white,
        margin: EdgeInsets.all(8),
        height: _deviceheight!,
        width: _devicewidth!,
      ),
      Container(
        color: Color.fromRGBO(249, 224, 227, 1),
        margin: EdgeInsets.all(8),
        height: 85,
        width: 85,
      ),
      Container(
        color: Colors.white,
        margin: EdgeInsets.all(26),
      ),
      Container(
        margin: EdgeInsets.all(43),
        child: Row(
          children: [
            Image.asset(
              "assets/img.jpg",
              height: 150,
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(child: _element2()),
            ),
          ],
        ),
      ),
    ]);
  }

  Widget _element2() {
    return Container(
      padding: EdgeInsets.all(4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "How to seem like you always have your shot together",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: const [
              Icon(
                Icons.circle_rounded,
                size: 25,
                color: Color.fromRGBO(253, 101, 146, 1),
              ),
              Text(
                "Jhony Vino",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                width: 15,
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.loose,
                child: Text(
                  "4min read",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
