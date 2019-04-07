import 'package:flutter/material.dart';
import 'package:flutube/flutube.dart';

class MewsArticle1 extends StatelessWidget {
  @override
  Widget flutubePlayer = FluTube("https://www.youtube.com/watch?v=1I-3vJSC-Vo",
      aspectRatio: 25 / 15, autoPlay: true, looping: true);
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("News Article 1"),
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 280,
                width: double.infinity,
                child: Image.asset(
                  "images/student.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 280,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Color.fromRGBO(0, 0, 0, .6),
                          Color.fromRGBO(0, 0, 0, .2)
                        ],
                      )),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.filter_frames,
                            color: Colors.white,
                            size: 36,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Image Slider | 12 Photos",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1),
                              ),
                              Text(
                                "Technology",
                                style: TextStyle(
                                    color: Colors.yellow, letterSpacing: 1),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Oct 21, 2019"),
                Row(
                  children: <Widget>[
                    Text("Share"),
                    SizedBox(
                      width: 7,
                    ),
                    Icon(
                      Icons.share,
                      size: 20,
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: Text(
              "Lorem Epsum Title Placeholder",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 19,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
              child: Row(
                children: <Widget>[
                  Icon(Icons.favorite_border),
                  SizedBox(
                    width: 10,
                  ),
                  Text("20.2k"),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.insert_comment),
                  SizedBox(
                    width: 10,
                  ),
                  Text("2.2k")
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.justify,
            ),
          ),
            Container(
              margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
            child: Text(
              "Post Video",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 19,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            padding:EdgeInsets.symmetric(horizontal: 10),
            margin: EdgeInsets.symmetric(vertical: 20),
            child: flutubePlayer,
          )
        ],
      ),
    );
  }
}
