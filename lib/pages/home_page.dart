import 'package:flutter/material.dart';
import 'package:profile_card/pages/home_landing.dart';
import 'package:profile_card/pages/profile_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Flutter UIs"),
        actions: <Widget>[Container(
          padding: EdgeInsets.all(15),
          child: Icon(Icons.favorite))],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            AppBar(
              title: Text('Flutter UI'),
              backgroundColor: Colors.deepOrange,
            ),
            ListTile(
              leading: Icon(Icons.arrow_right, color: Colors.deepOrangeAccent,),
                title: Text("Card Profile", style: TextStyle(color:Colors.black87, fontSize: 18),),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => ProfileCard()));
                }
              ),
            ListTile(
              leading: Icon(Icons.arrow_right, color: Colors.deepOrangeAccent,),
                title: Text("Home Landing", style: TextStyle(color:Colors.black87, fontSize: 18),),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => HomeLanding()));
                }
              )
          ],
        ),
      ),
      body: Center(
        child: Container(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Navigate to View All UIs.",style: TextStyle(fontSize: 20, color: Colors.deepPurple),),
              Builder(
                 builder:(BuildContext context)=>RaisedButton(
                  child: Icon(Icons.menu, color: Colors.white,),
                  color: Colors.deepOrange,
                  onPressed: (){
                    Scaffold.of(context).openDrawer();
                  },
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
