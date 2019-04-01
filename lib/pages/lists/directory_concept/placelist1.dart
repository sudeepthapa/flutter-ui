import 'package:flutter/material.dart';

class PlaceList1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Place List 1"),
        backgroundColor: Colors.deepOrangeAccent,
        elevation: 2,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.filter_list),
          )
        ],
      ),
      body: Lists(),
    );
  }
}

class Item {
  final String title;
  final String catagory;
  final String place;
  final String ratings;
  final String discount;
  final String image;

  Item(
      {this.title,
      this.catagory,
      this.place,
      this.ratings,
      this.discount,
      this.image});
}

class Lists extends StatelessWidget {
  List<Item> _data = [
    Item(
        title: 'Gardens By the Bay',
        catagory: "Gardens",
        place: "Singapore",
        ratings: "5.0/80",
        discount: "10 %",
        image: "images/butterfly.jpg"),
    Item(
        title: 'Singapore Zoo',
        catagory: "Parks",
        place: "Singapore",
        ratings: "4.5/90",
        discount: null,
        image: "images/compass.jpg"),
    Item(
        title: 'National Orchid Garden',
        catagory: "Parks",
        place: "Singapore",
        ratings: "4.5/90",
        discount: "12 %",
        image: "images/coffee.jpg"),
    Item(
        title: 'Godabari',
        catagory: "Parks",
        place: "Singapore",
        ratings: "4.5/90",
        discount: "15 %",
        image: "images/hotel.jpg"),
    Item(
        title: 'Rara National Park',
        catagory: "Parks",
        place: "Singapore",
        ratings: "4.5/90",
        discount: "12 %",
        image: "images/rain.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(6),
      itemCount: _data.length,
      itemBuilder: (BuildContext context, int index) {
        Item item = _data[index];
        return Card(
          elevation: 3,
          child: Row(
            children: <Widget>[
              Container(
                height: 125,
                width: 110,
                padding:
                    EdgeInsets.only(left: 0, top: 10, bottom: 70, right: 20),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(item.image),
                        fit: BoxFit.cover)),
                child:item.discount==null?Container(): Container(
                  color: Colors.deepOrange,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        item.discount,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "Discount",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      item.title,
                      style: TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.w700,
                          fontSize: 17),
                    ),
                    Text(
                      item.catagory,
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    Text(
                      item.place,
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.pink,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.pink,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.pink,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.pink,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.pink,
                          size: 18,
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(item.ratings, style: TextStyle(
                          fontSize: 13
                        ),),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Ratings", style: TextStyle(fontSize: 13),),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
