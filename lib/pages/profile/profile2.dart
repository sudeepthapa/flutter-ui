import 'package:flutter/material.dart';

class Profile2 extends StatelessWidget {
  final TextStyle heading1 = new TextStyle(
    color: Colors.black87,
    fontWeight: FontWeight.w600,
    fontSize: 23,
  );

  Widget getList(String title, String time) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 7,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "Preview",
                  style: TextStyle(color: Colors.black54),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  time,
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget dot() {
    return Container(
      margin: EdgeInsets.only(right: 5),
      width: 12,
      height: 12,
      decoration: BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.all(Radius.circular(6))),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                color: Colors.white,
                child: ClipPath(
                  clipper: Curved(),
                  child: Container(
                    height: 300,
                    width: double.infinity,
                    child: Image.asset(
                      "images/camera.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Positioned(
                top: 100,
                left: 160,
                child: Center(
                  child: Container(
                      child: Icon(
                    Icons.play_circle_outline,
                    color: Colors.white,
                    size: 80,
                  )),
                ),
              )
            ],
          ),
          Stack(
            children: <Widget>[
              Container(
                color: Colors.black12,
                child: ClipPath(
                  clipper: Curved(),
                  child: Container(
                    width: double.infinity,
                    height: 120,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                  top: 8,
                  child: Container(
                    width: 400,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(bottom: 3),
                              child: Text(
                                "Developer",
                                style: heading1,
                              ),
                            ),
                            Text("Sudip Thapa"),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Row(
                                children: <Widget>[dot(),dot(),dot(),dot(),dot(),dot(),],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                "Join Courses",
                                style: TextStyle(color: Colors.teal),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ))
            ],
          ),
          Container(
            color: Colors.black12,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "Description",
                      style: heading1,
                    ),
                  ),
                  Text(
                      "Description of this course is that it is the most rated and most amazed course in the whole world."),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Content", style: heading1),
                  SizedBox(
                    height: 20,
                  ),
                  getList("Welcome to the course", "2:30"),
                  getList("Introduction to web", "6:00"),
                  getList("Covering the HTTP", "2:30"),
                  getList("CSS framework", "2:30"),
                  getList("Webpack Power", "2:30"),
                  getList("Finding the right dev tools", "2:30"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Curved extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 70);
    var firstEndPoint = Offset(70, size.height - 27);
    var firstControlPoint = Offset(20, size.height - 30);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
