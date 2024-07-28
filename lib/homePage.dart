import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindos/voiceOnlyPage.dart';

import 'chatAndvoicePage.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   leading: Center(
      //     child: CircleAvatar(
      //       radius: 67,
      //       backgroundImage: AssetImage('assets/homePage/pro.png',),
      //       backgroundColor: Color(0xFF833EC8),
      //     ),
      //   ),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      // ),

      body: Container(
        height: height * 1,
        width: width * 1,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF3A164F),
              Color(0xFF280842),
              Color(0xFF4D2265),
              Color(0xFF3E1E4F),
              Color(0xFF4F0B60),
            ],
            stops: [
              0.13,
              0.37,
              0.57,
              0.76,
              1,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 75,right: 21,left: 21),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Center(
                            child: CircleAvatar(
                              radius: 31,
                              backgroundColor: Color(0xff833EC8),
                              child: CircleAvatar(
                                radius: 28,
                                backgroundColor: Color(0xff3A164F),
                                child: CircleAvatar(
                                  radius: 25,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: new DecorationImage(
                                        image: new AssetImage("assets/homePage/pro.png"),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: BoxShape.circle,
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFF5C1E6B),
                                          Color(0xFFC083F0),
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                      // border: Border.all(
                                      //   color: Colors.yellow,
                                      // ),
                                    ),

                                  ),

                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 5,),
                          Text(
                            'Shahla Thasni!',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Rasa-Regular',
                              color: Color(0xFFFCF7F7),
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: CircleAvatar(
                          radius: 31,
                          backgroundColor: Color(0xff833EC8),
                          child: CircleAvatar(
                            radius: 28,
                            backgroundColor: Color(0xff3A164F),
                            child: Icon(Icons.add_alert_sharp,color: Color(0xffFDF4F4),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.060,),
                Container(
                  height: height *0.221,
                  width: width * 0.885,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(55),
                    image: DecorationImage(
                      image: AssetImage("assets/homePage/Rectangle 11.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 35,top: 20),
                          child: Text(
                            'Premium Plan',
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Rakkas-Regular',
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        // Positioned(
                        //   left: 20,
                        //     child: Image.asset("assets/homePage/pinky.png",scale: 2,),
                        // ),
                      ],),
                      SizedBox(height: 10,),
                      Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 100,),
                          child: Text(
                            'Unlock your AI chatbot &',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Mallanna-Regular',
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 120),
                          child: Text(
                            'get premium features',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Mallanna-Regular',
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(right: 145),
                          child: Container(
                            height: height * 0.045,
                            width: width * .35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF7158D6),
                                  Color(0xFFC6AEDF),
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'UPGRADE PLAN',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Grenze-Bold',
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],),

                    ],
                  ),
                ),
                SizedBox(height: height * 0.015,),
                Padding(
                  padding: const EdgeInsets.only(right: 95),
                  child: Text(
                    'Select your AI assistant',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'ReemKufi-Regular',
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.010,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: height * 0.076,
                          width: width * 0.165,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF785694),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2,bottom: 2,left: 2,right: 2),
                          child: Container(
                            height: height * 0.072,
                            width: width * 0.155,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff3A164F),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6, left: 5, right: 2,bottom: 2),
                          child: Container(
                            height: height * 0.062,
                            width: width * 0.140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFB480CD),
                                  Color(0xFF6940DE),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),

                            child: Container(
                              decoration: BoxDecoration(
                                image: new DecorationImage(
                                  image: new AssetImage("assets/homePage/p1.png",),
                                  fit: BoxFit.fill,
                                ),

                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          height: height * 0.076,
                          width: width * 0.165,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF785694),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2,bottom: 2,left: 2,right: 2),
                          child: Container(
                            height: height * 0.072,
                            width: width * 0.155,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff3A164F),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6, left: 5, right: 2,bottom: 2),
                          child: Container(
                            height: height * 0.062,
                            width: width * 0.140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFB480CD),
                                  Color(0xFF6940DE),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),

                            child: Container(
                              decoration: BoxDecoration(
                                image: new DecorationImage(
                                  image: new AssetImage("assets/homePage/p2.png",),
                                  fit: BoxFit.fill,
                                ),

                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          height: height * 0.076,
                          width: width * 0.165,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF785694),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2,bottom: 2,left: 2,right: 2),
                          child: Container(
                            height: height * 0.072,
                            width: width * 0.155,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff3A164F),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6, left: 5, right: 2,bottom: 2),
                          child: Container(
                            height: height * 0.062,
                            width: width * 0.140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFB480CD),
                                  Color(0xFF6940DE),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),

                            child: Container(
                              decoration: BoxDecoration(
                                image: new DecorationImage(
                                  image: new AssetImage("assets/homePage/p3.png",),
                                  fit: BoxFit.fill,
                                ),

                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          height: height * 0.076,
                          width: width * 0.165,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF785694),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2,bottom: 2,left: 2,right: 2),
                          child: Container(
                            height: height * 0.072,
                            width: width * 0.155,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff3A164F),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6, left: 5, right: 2,bottom: 2),
                          child: Container(
                            height: height * 0.062,
                            width: width * 0.140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFB480CD),
                                  Color(0xFF6940DE),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),

                            child: Container(
                              decoration: BoxDecoration(
                                image: new DecorationImage(
                                  image: new AssetImage("assets/homePage/p4.png",),
                                  fit: BoxFit.fill,
                                ),

                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: height * 0.014,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => chatAndvoicePage()));
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: height * 0.25,
                            width: width * 0.398,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xFF6C3C78),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3,bottom: 3,left: 3,right: 2),
                            child: Container(
                              height: height * 0.244,
                              width: width * 0.382,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF4D2265),
                                    Color(0xFF3E1E4F),
                                  ],
                                  stops: [
                                    0.2,
                                    0.7
                                  ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,bottom: 3,left: 10,right: 2),
                            child: Container(
                              height: height * 0.142,
                              width: width * 0.342,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0xFF563C63),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 45,left: 50,right: 5,bottom: 20),
                            child: Icon(Icons.message_outlined,color: Color(0xFFFEF9F9), size: height* .068, weight: 1,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 150,left: 45),
                            child: Text(
                              'Chat with ',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Castoro-Regular',
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 180,left: 45),
                            child: Text(
                              'mindOs ',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Castoro-Regular',
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => voiceOnlyPage()));
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: height * 0.25,
                            width: width * 0.398,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xFF6C3C78),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3,bottom: 3,left: 3,right: 2),
                            child: Container(
                              height: height * 0.244,
                              width: width * 0.382,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF4D2265),
                                    Color(0xFF3E1E4F),
                                  ],
                                  stops: [
                                    0.2,
                                    0.7
                                  ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,bottom: 3,left: 10,right: 2),
                            child: Container(
                              height: height * 0.142,
                              width: width * 0.342,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0xFF563C63),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 45,left: 50,right: 5,bottom: 20),
                            child: Icon(Icons.mic,color: Color(0xFFFEF9F9), size: height* .068, weight: 1,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 150,left: 45),
                            child: Text(
                              'Talk with ',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Castoro-Regular',
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 180,left: 45),
                            child: Text(
                              'mindOs ',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Castoro-Regular',
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.only(top: 6, left: 5, right: 2,bottom: 2),
                          //   child: Container(
                          //     height: height * 0.062,
                          //     width: width * 0.140,
                          //     decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(15),
                          //       gradient: LinearGradient(
                          //         colors: [
                          //           Color(0xFFB480CD),
                          //           Color(0xFF6940DE),
                          //         ],
                          //         begin: Alignment.topCenter,
                          //         end: Alignment.bottomCenter,
                          //       ),
                          //     ),
                          //
                          //     child: Container(
                          //       decoration: BoxDecoration(
                          //         image: new DecorationImage(
                          //           image: new AssetImage("assets/homePage/p1.png",),
                          //           fit: BoxFit.fill,
                          //         ),
                          //
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25,),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: height * 0.08,
                        width: width * 0.85,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFF673A77),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13,bottom: 1,left: 15,right: 3),
                      child: Container(
                        height: height * 0.074,
                        width: width * 0.825,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF3E1E4F),
                              Color(0xFF4F0B60),
                            ],
                            stops: [
                              0.5,
                              1,
                            ],
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15,left: 20,bottom: 10),
                      child: Container(
                        height: height * 0.068,
                        width: width * 0.155,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: LinearGradient(
                              colors: [
                                Color(0xFFFFFEFE),
                                Color(0xFF7C5B88),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter
                          ),

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 28,left: 35),
                      child: Icon(Icons.arrow_forward,color: Color(0xff7E27D4),size: height * 0.042,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35,left: 150),
                      child: Text(
                        'Select & slide',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Castoro-Regular',
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFFBF6F6),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35,left: 311),
                      child: Icon(Icons.arrow_forward_ios_outlined,color: Color(0xffF1E5E5),size: height * 0.022,),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              left: 245, top: 123,
              child: Container(
                  child: Image.asset("assets/homePage/pinky.png",scale: 2,)),
            ),
          ],
        ),
      ),
    );
  }
}