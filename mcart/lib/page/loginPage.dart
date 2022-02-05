import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              height: 200,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: -220,
                    child: Container(
                      height: 600,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset("assets/circle.png"),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    child: Row(
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
                            Text("M",style: TextStyle(fontSize: 66,fontFamily: "Jost",color: Colors.white,fontWeight: FontWeight.bold),)
                          ],
                        ),
                        SizedBox(width: 20,),
                        Text("cart",style: TextStyle(fontSize: 66,fontFamily: "JostM"),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Center(child: Text("SIGN IN",style: TextStyle(fontSize: 20,color: Color(0xff000000),fontFamily: "Jost"),)),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Container(
                    height: 45,
                    width: 324,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)
                        ),
                        hintText: "+001.....",
                        prefixIcon: Icon(Icons.phone,color: Color(0xffE85248),),
                        contentPadding: EdgeInsets.all(0),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 45,
                    width: 324,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)
                        ),
                        hintText: "*******",
                        hintStyle: TextStyle(fontSize: 10),
                        prefixIcon: Icon(Icons.lock,color: Color(0xffE85248),),
                        //contentPadding: EdgeInsets.only(top: 3,left: 10)
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 50,),
            Container(
              height: 170,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),
                    child: SizedBox(
                      height: 50,
                      width: 324,
                      child: ElevatedButton(onPressed: (){}, child: Text("REGISTER",style: TextStyle(fontSize: 14,fontFamily: "Jost"),),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Color(0xffE85248),),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(35.0),
                                    side: BorderSide(color: Colors.red)
                                )
                            )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Or",style: TextStyle(color: Color(0xff000000),fontSize: 14,fontFamily: "Jost"),),
                  SizedBox(height: 20,),
                  Container(
                    height: 51,
                    width: 284,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/twitter.png",height: 40,width: 40,),
                        Image.asset("assets/facebook.png",height: 40,width: 40,),
                        Image.asset("assets/instagram.png",height: 40,width: 40,)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Color(0xffE85248),
                        shape: BoxShape.circle
                      ),
                      child: Text("1",style: TextStyle(color: Color(0xffffffff),fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
                Container(
                  height: 1,
                  width: 100,
                  color: Color(0xffFFDDDB),
                ),
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Color(0xffFFDDDB),
                          shape: BoxShape.circle
                      ),
                      child: Text("2",style: TextStyle(color: Color(0xff9B9B9B),fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
                Container(
                  height: 1,
                  width: 100,
                  color: Color(0xffFFDDDB),
                ),
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Color(0xffFFDDDB),
                          shape: BoxShape.circle
                      ),
                      child: Text("3",style: TextStyle(color: Color(0xff9B9B9B),fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
