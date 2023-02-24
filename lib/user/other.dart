// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class DashBoard extends StatefulWidget {
//   DashBoard({Key? key}) : super(key: key);

//   @override
//   State<DashBoard> createState() => _DashBoardState();
// }

// class _DashBoardState extends State<DashBoard> {
//   final uid = FirebaseAuth.instance.currentUser!.uid;
//   final email = FirebaseAuth.instance.currentUser!.email;
//   final creationTime = FirebaseAuth.instance.currentUser!.metadata.creationTime;

//   User? user = FirebaseAuth.instance.currentUser;

//   double? _deviceheight, _devicewidth;

//   verifyEmail() async {
//     if (user != null && !user!.emailVerified) {
//       await user!.sendEmailVerification();
//       print('Verification Email has benn sent');
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           backgroundColor: Colors.orangeAccent,
//           content: Text(
//             'Verification Email has benn sent',
//             style: TextStyle(fontSize: 18.0, color: Colors.black),
//           ),
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     _deviceheight = MediaQuery.of(context).size.height;
//     _devicewidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: Container(
//         margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
//         child: Column(
//           children: [
//             Text(
//               'User ID: $uid',
//               style: TextStyle(fontSize: 18.0),
//             ),
//             Row(
//               children: [
//                 Text(
//                   'Email: $email',
//                   style: TextStyle(fontSize: 18.0),
//                 ),
//                 user!.emailVerified
//                     ? Text(
//                         'verified',
//                         style:
//                             TextStyle(fontSize: 18.0, color: Colors.blueGrey),
//                       )
//                     : TextButton(
//                         onPressed: () => {verifyEmail()},
//                         child: Text('Verify Email'))
//               ],
//             ),
//             Text(
//               'Created: $creationTime',
//               style: TextStyle(fontSize: 18.0),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }













// Card(
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8),
//             border: Border.all(color: Colors.white),
//           ),
//           width: _devicewidth! * 0.9,
//           margin: EdgeInsets.all(8.0),
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Image.asset(
//                   "assets/img.jpg",
//                   height: 120,
//                   width: 120,
//                 ),
//                 Flexible(
//                   flex: 1,
//                   fit: FlexFit.tight,
//                   child: Container(child: _element2()),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),



  // final uid = FirebaseAuth.instance.currentUser!.uid;
  // final email = FirebaseAuth.instance.currentUser!.email;
  // final creationTime = FirebaseAuth.instance.currentUser!.metadata.creationTime;

  // User? user = FirebaseAuth.instance.currentUser;