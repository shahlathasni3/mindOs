import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindos/secondPage.dart';

class firstPage extends StatelessWidget {
  const firstPage({super.key});

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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // 1srt column start
            Column(
            children: [
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


            SizedBox(height: 10,),
            // 2nd column start
            Column(
              children: [
                // google container
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => secondPage()));
                  },
                  child: Container(
                    height: height / 5/3,
                    width: width / 5*3.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      gradient: LinearGradient(
                      colors: [
                        Color(0xFF453B52),
                        Color(0xFF3F2851),
                      ],
                      stops: [
                      0.3,
                      0.5,
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.topRight,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/firstPageImage/google-icon.png',scale: 20,),
                        SizedBox(width: 25,),
                        Text(
                          'Continue with Google',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Solway-Bold',
                            color: Color(0xFFEAE7E7),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 15,),
                // apple container
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => secondPage()));
                  },
                  child: Container(
                    height: height / 5/3,
                    width: width / 5*3.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF453B52),
                          Color(0xFF3F2851),
                        ],
                        stops: [
                          0.3,
                          0.5,
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.topRight,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/firstPageImage/apple-icon.png',scale: 10,),
                        SizedBox(width: 25,),
                        Text(
                          'Continue with Apple',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Solway-Bold',
                            color: Color(0xFFEAE7E7),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Text(
                  'By signing up, you agree to our',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Castoro-Regular',
                    color: Color(0xFF8D8B8B),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Terms of Service ',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'BreeSerif-Regular',
                        color: Color(0xFFF3EDED),
                      ),
                    ),
                    Text(
                      'and',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'BreeSerif-Regular',
                        color: Color(0xFF8D8B8B),
                      ),
                    ),
                    Text(
                      ' Privacy Policy',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'BreeSerif-Regular',
                        color: Color(0xFFF3EDED),
                      ),
                    ),
                  ],
                ),
              ],
            ),



          ],
        ),
        ),
    );
  }
}
