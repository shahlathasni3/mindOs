import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:mindos/provider/VoiceProvider.dart';
import 'package:mindos/provider/mainProvider.dart';
import 'package:provider/provider.dart';

import 'homePage.dart';

class voiceOnlyPage extends StatelessWidget {
  const voiceOnlyPage({super.key});

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;


    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leadingWidth: 100,
        leading: CircleAvatar(
          radius: 50,
          backgroundColor: Color(0xff9F6AB8),
          child: CircleAvatar(
            maxRadius: 25.8,
            backgroundColor: Color(0xff4F1C5C),
            child: IconButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => homePage()));
              },
              icon: Icon(Icons.arrow_back_ios_rounded,color: Color(0xffFDF4F4),),

            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          'mindOs',
          style: TextStyle(
            fontSize: 28,
            fontFamily: 'Stardos Stencil',
            fontWeight: FontWeight.w500,
            color: Color(0xFFFFFFFF),
          ),
        ),
        actions: [
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xff9F6AB8),
              child: CircleAvatar(
                maxRadius: 25.8,
                backgroundColor: Color(0xff684285),
                child: Icon(Icons.more_vert,color: Color(0xffFDF4F4),),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body:Container(
        height: height * 1,
        width: width * 1,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF7E5A8A),
              Color(0xFF4F1C5C),
              Color(0xFF341849),
              Color(0xFF291741),
              Color(0xFF23152F),
            ],
            stops: [
              0,
              0.21,
              0.45,
              0.71,
              0.95,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200,left: 20),
              child: Image.asset("assets/animations/aiassist.png",scale: height*0.001371,),
            ),
          ],
        ),
      ),


      bottomNavigationBar: Stack(
        children:[
          Container(
            height: height * 0.125,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF9A83C9),
                  Color(0xFF2C213B),
                  Color(0xFF491C83),
                ],
                stops: [
                  0,
                  0.47,
                  1,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Color(0xff9C56BD),
                  child: CircleAvatar(
                    maxRadius: 32,
                    backgroundColor: Color(0xff54446E),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => homePage()));
                      },
                      icon: Icon(Icons.home,color: Color(0xffFDF4F4),size: height * 0.035,),

                    ),
                  ),
                ),
                Consumer<VoiceProvider>(
                  builder: (context,value1,child) {
                    return InkWell(
                        onTap: () {
                          value1.listen(context);
                        },
                        child: Lottie.asset("assets/animations/voiceiconAnimation.json",height: height * 0.12,width: width / 2));
                  }
                ),
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Color(0xff9C56BD),
                  child: CircleAvatar(
                    maxRadius: 32,
                    backgroundColor: Color(0xff491C83),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => homePage()));
                      },
                      icon: Icon(Icons.delete_forever,color: Color(0xffFDF4F4),size: height * 0.035,),

                    ),
                  ),
                ),

              ],
            ),
          ),

        ],
      ),

    );
  }
}
