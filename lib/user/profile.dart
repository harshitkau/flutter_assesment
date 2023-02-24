import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final uid = FirebaseAuth.instance.currentUser!.uid;
  final email = FirebaseAuth.instance.currentUser!.email;
  final creationTime = FirebaseAuth.instance.currentUser!.metadata.creationTime;

  User? user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(224, 224, 224, 1),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            //alignment: AlignmentDirectional.bottomCenter,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.amber,
                    child: Image.asset(
                      'assets/wallpaperflare.com_wallpaper (1).jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 230,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white),
                              height: 200,
                              width: 400,
                              // color: Colors.white,
                              //
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 20),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        SizedBox(
                                          child: Text(
                                            "Little Butterfly",
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          height: 50,
                                        ),
                                        Text(
                                          "Product Designer",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        Text(
                                          "Kathmandu",
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                  _extra()
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 19,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white),
                              height: 300,
                              width: 400,
                              // color: Colors.white,
                              padding: EdgeInsets.all(16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "User Information",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 88, 88, 88)),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.email,
                                        size: 30,
                                        color: Color.fromARGB(255, 83, 81, 81),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Email",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          Text(
                                            "$email",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Color.fromARGB(
                                                    255, 123, 121, 121)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 35,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.phone,
                                        size: 30,
                                        color: Color.fromARGB(255, 83, 81, 81),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "Phone",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          Text(
                                            "+977-985687456",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Color.fromARGB(
                                                    255, 123, 121, 121)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 35,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.web,
                                        size: 30,
                                        color: Color.fromARGB(255, 83, 81, 81),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "Website",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          Text(
                                            "http://www.littlebutterfly.com",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Color.fromARGB(
                                                    255, 123, 121, 121)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                  "assets/wallpaperflare.com_wallpaper (1).jpg"),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          );
        },
      ),
    );
  }

  Widget _extra() {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(
                "245",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "Likes",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "3025",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "Comments",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "650",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "Favorites",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
