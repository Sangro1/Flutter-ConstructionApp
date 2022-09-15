import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotWidget extends StatefulWidget {
  const ForgotWidget({Key? key}) : super(key: key);
  @override
  State<ForgotWidget> createState() => _ForgotWidgetState();
}

class _ForgotWidgetState extends State<ForgotWidget> {
  final GlobalKey<FormState> _fromKey = GlobalKey<FormState>();

  UnfocusDisposition disposition = UnfocusDisposition.scope;
  String email = '';
  String isValid = '';
  //return Stack(
  //     alignment: Alignment.topLeft,
  //     children: <Widget>[
  //       YourScrollViewWidget(),
  //       IconButton(
  //         icon: Icon(Icons.arrow_back),
  //         onPressed: (){
  //           Navigator.pop(context);
  //         },
  //       )
  //     ],
  //   );
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(CupertinoIcons.back, color: Colors.black, size: 30,),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
        body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
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
                children: <Widget>[
                  SizedBox(height: 150),
                  Text(
                    'Forgot your password?',
                    style: GoogleFonts.lato(
                      textStyle:
                          TextStyle(color: Colors.white, letterSpacing: .3),
                      fontSize: 35,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Enter your email adddress associated with\nyour account and will send you\nlink to reset password.',
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(color: Colors.white),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 30),
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
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                            ),
                            hintText: "Email Address",
                            labelText: "Email Address",
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 25, horizontal: 16),
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
                                  'SEND',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat'),
                                ),
                              ),
                            ),
                          ),
                        ),

                      ),
                      SizedBox(height: 190,
                      ),
                   Text('Did not get yet?',
                style: GoogleFonts.lato(
                  textStyle: TextStyle(color: Colors.white),
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),),
                      Container(
                        // alignment: Alignment(1, 0),
                        // padding: EdgeInsets.only(top: 4, left: 10),
                        child:InkWell(
                          onTap: (){
                            // Navigator.pushNamed(context, '/ForgotRoute');
                          },
                          child: Text(
                            'Resend',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                fontFamily: 'RobotoMono',
                                decoration: TextDecoration.underline),
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
