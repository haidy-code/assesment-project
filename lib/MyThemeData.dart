import 'package:flutter/material.dart';

class MythemeData {
  static const Color redcolor=Color.fromRGBO(229, 30, 37, 1);
  static final ThemeData lighttheme=ThemeData(
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 10,
          color: Colors.redAccent,
          fontWeight: FontWeight.bold
        ),

        headline3: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 13,color: Colors.black
        ),

        headline4: TextStyle(
          fontSize: 10,
          color: Colors.grey,
        ),

      ),

  );

}