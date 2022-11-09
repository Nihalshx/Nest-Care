import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'FadeAnimation.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _LoginPageState();
}

class _LoginPageState extends State<ResetPassword> {

  bool _secureText = true;
  String _PasswordError;
  var confirmPass;
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F0ED),
      body: SafeArea(
        //Nest care
        child:FadeAnimation(0.5, SingleChildScrollView (
          child: Form(
            key: _form,
            child:Column(
            children: [
              SizedBox(height: 330),

              //Get Started
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment(-0.73, 0),
                    child:Text(
                        'Reset',
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
                ],
              ),

              //password
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
                    child: TextFormField(
                      validator: (String value) {
                        confirmPass = value;
                        if (value.isEmpty){
                          return "Please enter new password";
                        }
                        else if(value.length < 10){
                          return "Password must contain atleast 10 char";
                        }
                        else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          icon: Icon(Icons.remove_red_eye),
                          onPressed: (){
                            setState(() {
                              _secureText = !_secureText;
                            });
                          },
                        ),
                        hintText: 'Password',
                        errorText: _PasswordError,
                        hintStyle: GoogleFonts.rubik(
                          color: Color(0xffA8ABAE),
                          fontSize: 15,
                        ),
                      ),
                      obscureText: _secureText,
                    ),
                  ),
                ),
              ),
              //email
              SizedBox(height: 25,),
                //Container(
                  //padding: const EdgeInsets.symmetric(horizontal: 40.0),
           // child:
            Container(
             decoration:
             BoxDecoration(
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

              child: Container(
                padding: const EdgeInsets.only(left: 20.0),
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
                child: TextFormField(

                  validator: (String value) {
                    if (value.isEmpty){
                      return "Please Re-Enter new password";
                    }
                    else if(value.length < 10){
                      return "Password must contain atleast 10 char";
                    }
                    else if(value != confirmPass){
                      return "Password must be same as above";
                    }
                    else {
                      return null;
                    }
                  },
                  decoration:
                  InputDecoration(
                    border: InputBorder.none,
                    //InputBorder.outlined,

                    hintText: 'Confirm Password',
                    errorText: _PasswordError,
                    hintStyle: GoogleFonts.rubik(
                      color: Color(0xffA8ABAE),
                      fontSize: 15,
                    ),
                  ),
                  obscureText: true,
                ),
              ),
            //),
                ),






              //submit button
              SizedBox(height: 20,),
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
                    setState(() {
                      if (_form.currentState.validate())
                      {
                        return Navigator.pushNamed(context, 'login_page');
                      }
                      else
                        //Navigator.pushNamed(context, 'login_page');
                      print("loser");
                    });
                  },
                  child: Center(
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
            ])))),
      ),
    );
  }
}