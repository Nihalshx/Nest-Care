import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'FadeAnimation.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F0ED),
      body: SafeArea(
            //Nest care
        child:FadeAnimation(0.5, Column(
            children: [
              //Logo
              //Container(
                //child: Image(image: AssetImage('assets/logo.png')),
              //),
                  SizedBox(height: 50),
                           Container(
                               alignment: Alignment.center,
                               child: Text(
                                  'Nest Care',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.pacifico(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 42,
                                  )
                                  ),
                             ),
                  SizedBox(height: 70),

                      //Get Started
        Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment(-0.7, 0),
                              child:Text(
                              'Get started.',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.rubik(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              )
                            ),
                      ),

                          SizedBox(height: 10,),
                          Container(
                         alignment: Alignment(-0.7, 0),
                         child: Text(
                          'sign in to continue',
                          style: GoogleFonts.rubik(
                            fontSize: 15,
                          )
                      ),
                       ),
                      ],
        ),

                      //email text field
                  SizedBox(height: 25,),
         Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[400].withOpacity(0.9),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0.0, 3.0),
                        )
                      ],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter email',
                          hintStyle: GoogleFonts.rubik(
                              color: Color(0xffA8ABAE),
                              fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                      SizedBox(height: 25),
                  //password textifield
        Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[400].withOpacity(0.9),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset: Offset(0.0, 3.0),
                              )
                            ],
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child:Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Password',
                                hintStyle: GoogleFonts.rubik(
                                  color: Color(0xffA8ABAE),
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          ),
                      ),

                      //Text
                  SizedBox(height: 5,),
        Container(
          alignment: Alignment(0.700, 0),
      child:TextButton(onPressed: () {
        Navigator.pushNamed(context, 'ForgotPassword');
      }, child:  Text(
        'Recovery Password',
        textAlign: TextAlign.right,
        style: GoogleFonts.rubik(
          color: Color(0xff303030),
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
      ),)
        ),


                      SizedBox(height: 40),
                  //sign in button
        Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Color(0xffFF9999),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[400].withOpacity(0.9),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset: Offset(0.0, 3.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Center(
                              child: Text(
                                  'Sign in',
                                style: GoogleFonts.rubik(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18
                                )
                              )
                          ),
                        ),
                      ),

                  //or
              SizedBox(height: 20,),
        Text(
                '------or------',
                style: TextStyle(color: Color(0xff303030)),
              ),
              SizedBox(height: 00,),
                  //continue google
         Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0 , vertical: 20.0),
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Color(0xffF3F0ED),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[400].withOpacity(0.9),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0.0, 3.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                          child: Text(
                            'Continue With Google',
                            style: GoogleFonts.rubik(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 14
                            ),
                          )
                      ),
                    ),
                  ),


                  //not a member? register now
SizedBox(height: 20),
              Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              'Not a member?',
                            style: GoogleFonts.rubik(color: Colors.black,
                              fontWeight: FontWeight.bold),
                          ),

                          TextButton(onPressed: () {
                            Navigator.pushNamed(context, 'signup_Page');
                          },
                              child: Text(
                              'Register Now',
                              style: GoogleFonts.rubik(
                                  color: Color(0xff089BFF),
                                  fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
            ])),
      ),
    );
  }
}
