import 'dart:async';

import 'package:flutter/material.dart';

import 'loginPage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void initState(){
    super.initState();

    Timer(Duration(seconds: 7), (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,

                ),
                Positioned(
                  left: -275,
                  top: 10,
                  child: Container(
                    height: 600,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Color(0xffffb7b2),
                      //shape: BoxShape.circle,
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(300),topRight: Radius.circular(300))
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                color: Color(0xffE85248),
                              ),
                              Text("M",style: TextStyle(fontSize: 66,fontFamily: "Jost",color: Colors.white),)
                            ],
                          ),
                          SizedBox(width: 20,),
                          Text("cart",style: TextStyle(fontSize: 66,fontWeight: FontWeight.w500,fontFamily: "JostM"),)
                        ],
                      ),
                      Text("For Better Experience",style: TextStyle(
                        color: Color(0xffE85248),
                        fontSize: 20,
                        fontFamily: "Sonsie",
                      ),),
                      SizedBox(height: 10,),
                      // CircularProgressIndicator(
                      //   valueColor: AlwaysStoppedAnimation(Color(0xffE85248)),
                      // ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
