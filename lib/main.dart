import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:profile_card/pages/home_page.dart';

void main() {
 SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  statusBarColor: Colors.deepOrangeAccent
));
  runApp(
     MaterialApp(
      title: "Card Demo",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    )
  );
}