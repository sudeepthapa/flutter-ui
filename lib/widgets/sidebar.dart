import 'package:flutter/material.dart';
import 'package:profile_card/pages/about_us/about_us.dart';
import 'package:profile_card/pages/ecommerce/cart1.dart';
import 'package:profile_card/pages/lists/directory_concept/placelist1.dart';
import 'package:profile_card/pages/lists/directory_concept/schoolList.dart';
import 'package:profile_card/pages/login_pages/login_form.dart';
import 'package:profile_card/pages/login_pages/login_page2.dart';
import 'package:profile_card/pages/missaleneous/car_app.dart';
import 'package:profile_card/pages/missaleneous/clock.dart';
import 'package:profile_card/pages/missaleneous/home_landing.dart';
import 'package:profile_card/pages/missaleneous/home_page1.dart';
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
                "About Us",
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
                      "About Us 1",
                      style: TextStyle(color: Colors.black87, fontSize: 14),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => AboutUs()));
                    }),
              ],
            ),
            ExpansionTile(
              title: Text(
                "Ecommerce",
                style: TextStyle(
                    color: Colors.black, fontFamily: 'Roboto', fontSize: 18),
              ),
              leading: Icon(Icons.shopping_cart),
              children: <Widget>[
                ListTile(
                    leading: Icon(
                      Icons.arrow_right,
                      color: Colors.deepOrangeAccent,
                    ),
                    title: Text(
                      "Cart Page 1",
                      style: TextStyle(color: Colors.black87, fontSize: 14),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Cart()));
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
                      "Home Page1",
                      style: TextStyle(color: Colors.black87, fontSize: 14),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => HomePage1()));
                    }),
                ListTile(
                    leading: Icon(
                      Icons.arrow_right,
                      color: Colors.deepOrangeAccent,
                    ),
                    title: Text(
                      "Clock",
                      style: TextStyle(color: Colors.black87, fontSize: 14),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Clock()));
                    }),
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
                ListTile(
                    leading: Icon(
                      Icons.arrow_right,
                      color: Colors.deepOrangeAccent,
                    ),
                    title: Text(
                      "Car App",
                      style: TextStyle(color: Colors.black87, fontSize: 14),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => CarApp()));
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
                        }),
                    ListTile(
                        leading: Icon(
                          Icons.arrow_right,
                          color: Colors.deepOrangeAccent,
                        ),
                        title: Text(
                          "School List",
                          style: TextStyle(color: Colors.black87, fontSize: 14),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      SchoolList()));
                        }),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/butterfly.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(.5), BlendMode.hardLight)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "' Colaboration in the means to faster success '",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Text(
                "Navigate to View All UIs.",
                style: TextStyle(fontSize: 20, color: Colors.white),
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
    );
  }
}
