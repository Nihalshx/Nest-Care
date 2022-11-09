import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'FadeAnimation.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key key}) : super(key: key);

  @override
  State<SignupPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignupPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F0ED),
      body: SafeArea(
        //Nest care
        child:FadeAnimation(0.5,Column(
            children: [
              SizedBox(height: 0),
              FadeAnimation(0.5,Container(
                alignment: Alignment(-0.6, 0),
                child: Text(
                    'Nest Care',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.pacifico(
                      fontWeight: FontWeight.w400,
                      fontSize: 26,
                    )
                ),
              )),
              SizedBox(height: 70),

              //Get Started
        Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child:Text(
                        'Create an account',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w600,
                          fontSize: 28,
                        )
                    ),
                  ),

                  SizedBox(height: 15,),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                        'Lets go through a few simple steps',
                        style: GoogleFonts.rubik(
                          fontSize: 14,
                        )
                    ),
                  ),
                ],
              ),

              //Full name
              SizedBox(height: 30,),
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
                        hintText: 'Full name',
                        hintStyle: GoogleFonts.rubik(
                          color: Color(0xffA8ABAE),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              //email textified
              SizedBox(height: 30,),
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


              //password textifield
              SizedBox(height: 30),
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

              SizedBox(height: 50),
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
                        'Sign up',
                        style: GoogleFonts.rubik(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18
                        ),
                      ),
                  ),
                ),
              ),

              //or
              SizedBox(height: 25,),
              Text(
                '------or------',
                style: TextStyle(color: Color(0xff303030)),
              ),

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
                          color:  Color(0xff303030),
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      )
                  ),
                ),
              ),


              //not a member? register now
SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  TextButton(onPressed: () {
                    Navigator.pushNamed(context, 'login_page');
                  },
                    child: Text(
                      'Sign in',
                      style: TextStyle(color: Color(0xff089BFF),
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
