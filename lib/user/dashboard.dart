import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/login.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final uid = FirebaseAuth.instance.currentUser!.uid;
  final email = FirebaseAuth.instance.currentUser!.email;
  final creationTime = FirebaseAuth.instance.currentUser!.metadata.creationTime;

  User? user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'User ID: $uid',
              style: TextStyle(fontSize: 18.0),
            ),
            Row(
              children: [
                Text(
                  'Email: $email',
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
            Text(
              'Created: $creationTime',
              style: TextStyle(fontSize: 18.0),
            ),
            Container(
                padding: EdgeInsets.only(left: 140, top: 20),
                child: ElevatedButton(
                  onPressed: () async => {
                    await FirebaseAuth.instance.signOut(),
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                        (route) => false)
                  },
                  child: Text('Logout'),
                  style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                )),
          ],
        ),
      ),
    );
  }
}
