import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'homePage.dart';

class welcomePage extends StatelessWidget {
  const welcomePage({super.key});

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;


    return Scaffold(
      body : Container(
        height: height * 1,
        width: width * 1,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/welcomePage/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     colors: [
        //       Color(0xFF320A44),
        //       Color(0xFF151034),
        //       Color(0xFF440354),
        //       Color(0xFF120F33),
        //       Color(0xFF392343),
        //     ],
        //     stops: [
        //       0,
        //       0.25,
        //       0.35,
        //       0.69,
        //       0.93,
        //     ],
        //     begin: Alignment.topRight,
        //     end: Alignment.bottomLeft,
        //   ),
        // ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 65, right: 155),
              child: Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Suranna-Regular',
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFFBF6F6),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 125),
              child: Row(
                children: [
                  Text(
                    'Shahla',
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Suranna-Regular',
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFFBF6F6),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Icon(Icons.waving_hand,color: Color(0xFFf2bb16),size: 36,),
                ],
              ),
            ),

            Image.asset(
              "assets/gif/welcomePage.gif",
              height: height * 0.45,
              width: width * 2,
            ),


            Padding(
              padding: const EdgeInsets.only(right: 160),
              child: Text(
                'Your Own',
                style: TextStyle(
                  fontSize:36,
                  fontFamily: 'Rakkas-Regular',
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.only(right: 160),
              child: GradientText(
                'AI Assistant',
                style: TextStyle(
                  fontSize: 48,
                  fontFamily: 'Rakkas-Regular',
                ),
                colors: [
                  Color(0xFFB344B6),
                  Color(0xFFAE84B7),
                  Color(0xFF67178D),
                ],
              ),
            ),



            SizedBox(height: 50,),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => homePage()));
              },
              child: Container(
                height: height / 4/3,
                width: width / 4*3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF3A30AD),
                      Color(0xFFC159D2),
                      Color(0xFFB279D6),
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
                    'Get Started',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Rakkas-Regular',
                      color: Color(0xFFEFE8E8),
                      ),
                    ),
                  ),
                ),
            ),


          ],
        ),
      ),
    );
  }
}
