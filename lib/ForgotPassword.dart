import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'FadeAnimation.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _LoginPageState();
}

class _LoginPageState extends State<ForgotPassword> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F0ED),
      body: SafeArea(
        //Nest care
        child:FadeAnimation(0.5, SingleChildScrollView( child:Column(
            children: [
              SizedBox(height: 460),

              //Get Started
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment(-0.69, 0),
                    child:Text(
                        'Forgot',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        )
                    ),
                  ),

                  SizedBox(height: 0,),
                  Container(
                    alignment: Alignment(-0.6, 0),
                    child: Text(
                        'Password ?',
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        )
                    ),
                  ),

                  SizedBox(height: 10),
                  Container(
                    alignment: Alignment(-0.5, 0),
                    child:Text(
                        'Don’t worry! it happens.Please enter the ',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.inter(
                            color: Color(0xff413F42),
                          fontSize: 12,
                        )
                    ),
                  ),

                  Container(
                    alignment: Alignment(-0.53, 0),
                    child:Text(
                            'address associated with your account.',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.inter(
                          color: Color(0xff413F42
                          ),
                          fontSize: 12,
                        )
                    ),
                  ),
                ],
              ),

              //email
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
                        hintText: 'Email',
                        hintStyle: GoogleFonts.rubik(
                          color: Color(0xffA8ABAE),
                          fontSize: 15,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30),
              //submit button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Container(
                  padding: EdgeInsets.all(1),
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
                  child:TextButton(onPressed: () {
                    Navigator.pushNamed(context, 'ResetPassword');
                  },
                    child:Center(
                      child: Text(
                          'Submit',
                          style: GoogleFonts.rubik(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18
                          )
                      )
                  ),
                  ),
                ),
              ),
            ]))),
      ),
    );
  }
}
