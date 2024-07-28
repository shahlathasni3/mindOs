import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'firstPage.dart';

class splashPage extends StatefulWidget {
  const splashPage({super.key});

  @override
  State<splashPage> createState() => _splashPageState();
}

class _splashPageState extends State<splashPage> {

  void initState(){
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => firstPage()));
    });
  }


  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;


    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        height: height * 1,
        width: width * 1,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF392343),
                Color(0xFF440354),
                Color(0xFF320A44),
                Color(0xFF120F33),
              ],
            stops: [
              0.1,
              0.4,
              0.8,
              1,
            ],
            begin: Alignment.topLeft,
            end: Alignment.center,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/splashImage/logo.png',scale: 3,),
            Text(
              'mindOs',
              style: TextStyle(
                fontSize: 45,
                fontFamily: 'Stardos Stencil',
                fontWeight: FontWeight.w500,
                color: Color(0xFFF0F0F0),
              ),
            ),

            Text(
              'Your all-in-one AI companion',
              style: TextStyle(
                fontSize: 17,
                fontFamily: 'SpaceGrotesk',
                fontWeight: FontWeight.w800,
                color: Color(0xFFF0E8E8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
