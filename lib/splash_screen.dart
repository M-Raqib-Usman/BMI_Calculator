import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/main.dart';

class splash_screen extends StatefulWidget {
  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (Context) => MyHomePage(title: 'BMI APP',),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo,
        child: Center(
            child: Text(
          'BMI CALCULATOR',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 35),
        )),
      ),
    );
  }
}
