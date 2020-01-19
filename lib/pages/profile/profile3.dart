import 'dart:convert';

import 'package:flutter/material.dart';

class Profile3 extends StatelessWidget {
  const Profile3({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> user = {
      "userId": 505,
      "profile_pic": "''",
      "name": "Sudip Thapa",
      "email": "sudeptech@gmail.com",
      "location": "Urlabari, Morang",
      "mobile_number": "9849716661",
      "user_type": "3",
      "sell_status": "0",
      "user_description": "Web | Mobile Application developer.",
      "has_set_serving_hours": "false",
      "shop_name": "New Pasal",
      "vat_number": "pan Number",
      "pan_number": "Pan Number",
      "created_at": "2020-01-13 19:09:53",
      "updated_at": "2020-01-16 11:56:21",
      "is_active": 1,
      "has_set_preferences": false
    };
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
          child: Stack(children: <Widget>[
        Container(
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'images/student.jpg',
                ),
                fit: BoxFit.cover),
          ),
        ),
        Container(
            margin: EdgeInsets.fromLTRB(16.0, 200.0, 16.0, 16.0),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(16.0),
                      margin: EdgeInsets.only(top: 16.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 96.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  user['name'],
                                  style: Theme.of(context).textTheme.title,
                                ),
                                Text(user['location'])
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                            width: double.infinity,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            new BoxShadow(
                              color: Colors.grey,
                              offset: new Offset(-2.0, -1.0),
                            )
                          ],
                          image: DecorationImage(
                              image: AssetImage(
                                'images/student.jpg',
                              ),
                              fit: BoxFit.cover)),
                      margin: EdgeInsets.only(left: 16.0),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text("User information"),
                      ),
                      Divider(),
                      ListTile(
                        title: Text("Email"),
                        subtitle: Text(user['email']),
                        leading: Icon(Icons.email),
                      ),
                      ListTile(
                        title: Text("Phone"),
                        subtitle: Text(user['mobile_number']),
                        leading: Icon(Icons.phone),
                      ),
                      ListTile(
                        title: Text("Website"),
                        subtitle: Text("https://www.sudipthpa.com.np"),
                        leading: Icon(Icons.web),
                      ),
                      ListTile(
                        title: Text("Description"),
                        subtitle: Text(user['user_description']),
                        leading: Icon(Icons.person),
                      ),
                      ListTile(
                        title: Text("Shop Name"),
                        subtitle: Text(user['shop_name']),
                        leading: Icon(Icons.shop),
                      ),
                      ListTile(
                        title: Text("Pan Number"),
                        subtitle: Text(user['pan_number']),
                        leading: Icon(Icons.confirmation_number),
                      ),
                      ListTile(
                        title: Text("Vat Number"),
                        subtitle: Text(user['vat_number']),
                        leading: Icon(Icons.confirmation_number),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ])),
    );
  }
}
