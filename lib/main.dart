import 'package:flutter/material.dart';
import 'package:flutter_examp1/HomeScreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => MultiTable()
      },
    ),
  );
}
