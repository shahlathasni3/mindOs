import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:mindos/provider/mainProvider.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';
// import 'package:http/http.dart ' as http;

import 'homePage.dart';

class chatAndvoicePage extends StatefulWidget {
  const chatAndvoicePage({super.key});

  @override
  State<chatAndvoicePage> createState() => _chatAndvoicePageState();
}

class _chatAndvoicePageState extends State<chatAndvoicePage> {
  late FlutterTts flutterTts = FlutterTts();
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Additional initialization if needed
  }

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
            backgroundColor: Color(0xff291741),
            child: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => homePage()));
              },
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: Color(0xffFDF4F4),
              ),
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
                backgroundColor: Color(0xff291741),
                child: Icon(
                  Icons.more_vert,
                  color: Color(0xffFDF4F4),
                ),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Consumer<MainProvider>(builder: (context, value100, child) {
        return SingleChildScrollView(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF23152F),
                  Color(0xFF291741),
                  Color(0xFF341849),
                  Color(0xFF4F1C5C),
                  Color(0xFF7E5A8A),
                ],
                stops: [
                  0.18,
                  0.33,
                  0.53,
                  0.90,
                  1,
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 154, left: 15),
                      child: Container(
                        height: height * 0.074,
                        width: width * 0.739,
                        decoration: BoxDecoration(
                            color: Color(0xff7A5F7E),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(0))),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 13, left: 13),
                          child: Text(
                            'What is Flutter. when flutter was developed?',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Castoro-Regular',
                              color: Color(0xFFFCF7F7),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 157, left: 10),
                      child: Center(
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
                                  image: DecorationImage(
                                    image: AssetImage("assets/homePage/pro.png"),
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
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24, right: 15),
                  child: Container(
                    // height: height * 0.474,
                    width: width * 0.879,
                    decoration: BoxDecoration(
                        color: Color(0xff7A5F7E),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(25))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 13, left: 13),
                      child: Column(
                        children: [
                          ReadMoreText(
                            value100.streamAnswer,
                            style: TextStyle(
                                color: Color(0xffffffff), fontSize: 15),
                            trimLines: 3,
                            colorClickableText: Color(0xFFe8caed),
                            trimMode: TrimMode.Line,
                            trimCollapsedText: 'Read more',
                            trimExpandedText: 'Read less',
                            moreStyle: const TextStyle(
                              fontSize: 20,
                              fontFamily: 'Castoro-Regular',
                              color: Color(0xFFFCF7F7),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 187,right: 120),
                  child: Image.asset("assets/animations/aiassist.png",scale: height*0.001071,),
                ),
              ],
            ),
          ),
        );
      }),
      bottomNavigationBar: Consumer<MainProvider>(
        builder: (context, value120, child) {
          return Stack(
            children: [
              Container(
                height: height * 0.115,
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
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 15,
                  bottom: 20,
                ),
                child: Container(
                  height: height * 0.06,
                  width: width * 0.61,
                  decoration: BoxDecoration(
                      color: Color(0xFFA399B7),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 7, top: 5),
                    child: TextField(
                      controller: value120.controller,
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        hintText: 'Enter a prompt here...',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Castoro-Regular',
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 282,
                  top: 20,
                ),
                child: Container(
                  height: height * 0.06,
                  width: width * 0.135,
                  decoration: BoxDecoration(
                      color: Color(0xFFA399B7),
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 3.5),
                    child: Icon(
                      Icons.mic,
                      color: Color(0xffffffff),
                      size: height * 0.035,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 350,
                  top: 20,
                ),
                child: Consumer<MainProvider>(
                  builder: (context, value10, child) {
                    return InkWell(
                      onTap: () {
                        value10.geminiStream(value120.controller.text);
                      },
                      child: Container(
                        height: height * 0.06,
                        width: width * 0.145,
                        decoration: BoxDecoration(
                            color: Color(0xFFA399B7),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Icon(
                            Icons.send,
                            color: Color(0xffffffff),
                            size: height * 0.035,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
