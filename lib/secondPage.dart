import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindos/provider/mainProvider.dart';
import 'package:mindos/welcomePage.dart';
import 'package:provider/provider.dart';

class secondPage extends StatelessWidget {
  const secondPage({super.key});

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;


    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Container(
              height: height * 1,
              width: width * 1,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF120F33),
                    Color(0xFF1C0C23),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 85,left: 165),
                child: Text(
                  'mindOs',
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Stardos Stencil',
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFF0F0F0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 350,),
              child: Container(
                  height: height * 1,
                  width: width * 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft:  Radius.circular(25),
                      topRight:  Radius.circular(25),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF2A2946),
                        Color(0xFF766AAA),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                child: Column(
                  children: [
                    SizedBox(height: 80,),
                    Text(
                      'What’s your name?',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'RobotoFlex-Regular',
                        color: Color(0xFFF0F0F0),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: height / 5/3,
                      width: width / 5*3.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF7140A1),
                            Color(0xFF6A5284),
                            Color(0xFF64606D),
                          ],
                          stops: [
                            0,
                            0.57,
                            1,
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: TextField(
                        style: TextStyle(color: Colors.white70,
                            fontSize: 18,
                        ),
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                          hintText: "Type Here...",
                          hintStyle: TextStyle(
                              color: Colors.white24,
                              fontFamily: "RaleWay"
                          ),

                        ),
                      ),
                    ),
                    SizedBox(height: 35,),
                    Text(
                      'What’s your date of birth?',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'RobotoFlex-Regular',
                        color: Color(0xFFF0F0F0),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: height / 5/3,
                      width: width / 5*3.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF7140A1),
                            Color(0xFF6A5284),
                            Color(0xFF64606D),
                          ],
                          stops: [
                            0,
                            0.57,
                            1,
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: TextField(
                        style: TextStyle(color: Colors.white70,
                          fontSize: 18,
                        ),
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                          hintText: "Type Here...",
                          hintStyle: TextStyle(
                              color: Colors.white24,
                              fontFamily: "RaleWay"
                          ),

                        ),
                      ),
                    ),
                    SizedBox(height: 85,),
                    Consumer<MainProvider>(
                      builder: (context,value1,child) {
                        return InkWell(
                          onTap: () {
                            value1.playWelcomeSound();
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => welcomePage()));
                          },
                          child: Container(
                            height: height / 4/3,
                            width: width / 4*3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF2A3382),
                                  Color(0xFF654AC0),
                                  Color(0xFFAF3EE4),
                                ],
                                stops: [
                                  0,
                                  0.5,
                                  1,
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                            ),
                            child:  Center(
                              child: Text(
                                'Continue',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Castoro-Regular',
                                  color: Color(0xFFEFE8E8),
                                ),
                              ),
                            ),
                          ),
                        );


                      }
                    ),
                  ],
                ),


              ),
            ),

          ],
        ),
    );
  }
}
