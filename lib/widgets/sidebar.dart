import 'package:flutter/material.dart';
import 'package:profile_card/pages/lists/directory_concept/placelist1.dart';
import 'package:profile_card/pages/login_pages/login_form.dart';
import 'package:profile_card/pages/login_pages/login_page2.dart';
import 'package:profile_card/pages/missaleneous/home_landing.dart';
import 'package:profile_card/pages/news_article/news_article.dart';
import 'package:profile_card/pages/profile/profile2.dart';
import 'package:profile_card/pages/profile/profile_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Flutter UIs"),
        actions: <Widget>[
          Container(padding: EdgeInsets.all(15), child: Icon(Icons.favorite))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            AppBar(
              title: Text('Flutter UI'),
              backgroundColor: Colors.deepOrange,
            ),
            ExpansionTile(
              leading: Icon(Icons.lock),
              title: Text(
                "Login UI",
                style: TextStyle(
                    color: Colors.black, fontFamily: 'Roboto', fontSize: 18),
              ),
              children: <Widget>[
                ListTile(
                    leading: Icon(
                      Icons.arrow_right,
                      color: Colors.deepOrangeAccent,
                    ),
                    title: Text(
                      "Login Form 1",
                      style: TextStyle(color: Colors.black87, fontSize: 14),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => LoginForm()));
                    }),
                ListTile(
                    leading: Icon(
                      Icons.arrow_right,
                      color: Colors.deepOrangeAccent,
                    ),
                    title: Text(
                      "Login Form 2",
                      style: TextStyle(color: Colors.black87, fontSize: 14),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => LoginPage2()));
                    })
              ],
            ),
            ExpansionTile(
              title: Text(
                "Profile UI",
                style: TextStyle(
                    color: Colors.black, fontFamily: 'Roboto', fontSize: 18),
              ),
              leading: Icon(Icons.person),
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.arrow_right,
                    color: Colors.deepOrangeAccent,
                  ),
                  title: Text(
                    "Card Profile 1",
                    style: TextStyle(color: Colors.black87, fontSize: 14),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => ProfileCard()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.arrow_right,
                    color: Colors.deepOrangeAccent,
                  ),
                  title: Text(
                    "Profile 2",
                    style: TextStyle(color: Colors.black87, fontSize: 14),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Profile2()));
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                "Article",
                style: TextStyle(
                    color: Colors.black, fontFamily: 'Roboto', fontSize: 18),
              ),
              leading: Icon(Icons.person),
              children: <Widget>[
                ListTile(
                    leading: Icon(
                      Icons.arrow_right,
                      color: Colors.deepOrangeAccent,
                    ),
                    title: Text(
                      "News Article 1",
                      style: TextStyle(color: Colors.black87, fontSize: 14),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  MewsArticle1()));
                    }),
              ],
            ),
            ExpansionTile(
              title: Text(
                "Misallenaous",
                style: TextStyle(
                    color: Colors.black, fontFamily: 'Roboto', fontSize: 18),
              ),
              leading: Icon(Icons.loupe),
              children: <Widget>[
                ListTile(
                    leading: Icon(
                      Icons.arrow_right,
                      color: Colors.deepOrangeAccent,
                    ),
                    title: Text(
                      "Home Landing",
                      style: TextStyle(color: Colors.black87, fontSize: 14),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  HomeLanding()));
                    }),
              ],
            ),
            ExpansionTile(
              title: Text(
                "List Ui",
                style: TextStyle(
                    color: Colors.black, fontFamily: 'Roboto', fontSize: 18),
              ),
              leading: Icon(Icons.list),
              children: <Widget>[
                ExpansionTile(
                  backgroundColor: Colors.black12,
                  title: Text('Directory Concept'),
                  leading: Icon(Icons.looks),
                  children: <Widget>[
                    ListTile(
                        leading: Icon(
                          Icons.arrow_right,
                          color: Colors.deepOrangeAccent,
                        ),
                        title: Text(
                          "Place List 1",
                          style: TextStyle(color: Colors.black87, fontSize: 14),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      PlaceList1()));
                        })
                  ],
                )
              ],
            )
          ],
        ),
      ),
      body: Center(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Navigate to View All UIs.",
              style: TextStyle(fontSize: 20, color: Colors.deepPurple),
            ),
            Builder(
              builder: (BuildContext context) => RaisedButton(
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    color: Colors.deepOrange,
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
            )
          ],
        )),
      ),
    );
  }
}
