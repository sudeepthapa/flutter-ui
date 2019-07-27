import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:profile_card/widgets/sidebar.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.deepOrangeAccent));
  runApp(MaterialApp(
    title: "Card Demo",
    home: HomePage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'OpenSans', primaryColor: Color(0xffb91d73)),
  ));
}

