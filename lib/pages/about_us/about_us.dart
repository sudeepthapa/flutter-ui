import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us 1"),
        backgroundColor: Color(0xFF008800),
      ),
      body: ListView(
        children: <Widget>[
          Icon(Icons.traffic, size: 130,color: Color(0xFF008800),),
          Text("PS Edu", style: TextStyle(fontSize: 30, ),textAlign: TextAlign.center,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Version", style: TextStyle(fontSize: 14,color: Colors.grey),textAlign: TextAlign.center,),
          ),
          Text("2.3", style: TextStyle(fontSize: 14,color: Colors.grey),textAlign: TextAlign.center,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 110),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 30),
          Text("Who we are ?", style: TextStyle(fontSize: 22,color: Colors.black87),textAlign: TextAlign.center,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("A queuing system is described by its calling population, the nature of arrivals, the service mechanism, system capacity and the queuing discipline. A single channel queuing system is portrayed in fig below.", style: TextStyle(fontSize: 16,color: Colors.black87),textAlign: TextAlign.center,),
          ),
          SizedBox(height: 30,),
          Text("Why we do ?", style: TextStyle(fontSize: 22,color: Colors.black87),textAlign: TextAlign.center,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("A queuing system is described by its calling population, the nature of arrivals, the service mechanism, system capacity and the queuing discipline. A single channel queuing system is portrayed in fig below.", style: TextStyle(fontSize: 16,color: Colors.black87),textAlign: TextAlign.center,),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(Icons.shopping_cart, size: 40,),
                Icon(Icons.shuffle, size: 40,),
                Icon(Icons.sim_card, size: 40,)
              ],
            ),
          )
          
          
        ],
      ),
    );
  }
}