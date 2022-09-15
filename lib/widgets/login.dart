import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String email = '', pass = ' ';
  bool _isObsecure = false;
  UnfocusDisposition disposition = UnfocusDisposition.scope;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
    child:Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('assets/building.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
          child: Container(
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
            child: SingleChildScrollView(
              child: Column(
                children:<Widget>[
                  SizedBox(height: 120),
                  Text(
                    'N U L E A S E',
                    style: GoogleFonts.lato(
                      textStyle:
                          TextStyle(color: Colors.white70, letterSpacing: .5),
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 70),
                  Text(
                    'Log In',
                    style: GoogleFonts.roboto(
                      textStyle:
                          TextStyle(color: Colors.white70, letterSpacing: .5),
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 60),
                  const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 16),
                        child: TextField(
                          onChanged: (value) {
                            email = value;
                          },
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.transparent,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14.7),
                            ),
                            hintText: "Email Address",
                            labelText: "Email Address",
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: TextFormField(
                          onChanged: (value) {
                            pass = value;
                          },
                          textInputAction: TextInputAction.next,
                          obscureText: _isObsecure,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.transparent,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14.7),
                            ),
                            hintText: "Password",
                            labelText: "Password",
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isObsecure
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObsecure = !_isObsecure;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment(1, 0),
                        // padding: EdgeInsets.only(top: 4, left: 10),
                        child:InkWell(
                         onTap: (){
                           Navigator.pushNamed(context, '/ForgotRoute');
                         },
                          child: Text(
                            'Forgot?',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                                fontFamily: '  RobotoMono',
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ),
                      SizedBox(height: 80,),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Container(
                          height: 55,
                          width: 300,
                          child: Material(
                            borderRadius: BorderRadius.circular(13),
                            shadowColor: Colors.orangeAccent,
                            color: Colors.blue,
                            elevation: 7,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/Login');
                              },
                              child: const Center(
                                child: Text(
                                  'LOG IN',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Container(
                          height: 55,
                          width: 300,
                          child: Material(
                            borderRadius: BorderRadius.circular(13),
                            shadowColor: Colors.orangeAccent,
                            color: Colors.white,
                            elevation: 7,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/registerRoute ');
                              },
                              child: const Center(
                                child: Text(
                                  'REGISTER',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],

                  ),
                ],
              ),
            ),
          ),
        ),
      ),
        ),
    );
  }
}
