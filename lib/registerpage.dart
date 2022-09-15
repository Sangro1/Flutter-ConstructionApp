import 'dart:ui';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({Key? key}) : super(key: key);
  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {

  UnfocusDisposition disposition = UnfocusDisposition.scope;
  String email = '', pass= '' , name='' , last = '';
    bool _isObsecure = false;


  @override
  Widget build(BuildContext context) {
    var _currPageValue = " ";

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.back,
            color: Colors.black,
            size: 30,
          ),
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
                  children:<Widget>[
                    SizedBox(height: 100),
                    Text(
                      'Get Started in Just a\nFew Steps.',
                      style: GoogleFonts.lato(
                        textStyle:
                        TextStyle(color: Colors.white70, letterSpacing: .5),
                        fontSize: 35,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height:10),
                    Text(
                      'I am',
                      style: GoogleFonts.roboto(
                        textStyle:
                        TextStyle(color: Colors.white70, letterSpacing: .5),
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 10),
                    const Padding(
                        padding:
                        EdgeInsets.symmetric(vertical:10, horizontal: 10)),
                  //   Row(
                  //   children:<Widget> [
                  //     Container(
                  //       height: 50,
                  //       width: 150,
                  //       child: Material(
                  //         borderRadius: BorderRadius.circular(13),
                  //         shadowColor: Colors.transparent,
                  //         color: Colors.black,
                  //         elevation: 7,
                  //         child: GestureDetector(
                  //           onTap: () {
                  //             // Navigator.pushNamed(context, '/');
                  //           },
                  //           child: const Center(
                  //             child: Text(
                  //               'Landlord',
                  //               style: TextStyle(
                  //                   color: Colors.white,
                  //                   fontSize: 18,
                  //                   fontWeight: FontWeight.bold,
                  //                   fontFamily: 'Montserrat'),
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     Container(
                  //       height: 50,
                  //       width: 150,
                  //       child: Material(
                  //         borderRadius: BorderRadius.circular(13),
                  //         shadowColor: Colors.black12,
                  //         color: Colors.blue,
                  //         elevation: 7,
                  //         child: GestureDetector(
                  //           onTap: () {
                  //             // Navigator.pushNamed(context, '/');
                  //           },
                  //           child: const Center(
                  //             child: Text(
                  //               'Tenant',
                  //               style: TextStyle(
                  //                   color: Colors.white,
                  //                   fontSize: 18,
                  //                   fontWeight: FontWeight.bold,
                  //                   fontFamily: 'Montserrat'),
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     SizedBox(height: 15),
                  //
                  //     Padding(
                  //       padding:
                  //       EdgeInsets.symmetric(horizontal: 25, vertical: 16),
                  //       child:
                  //       TextFormField(
                  //       textInputAction: TextInputAction.next,
                  //       decoration: InputDecoration(
                  //         filled: true,
                  //         fillColor: Colors.transparent,
                  //         border: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(14.7),
                  //         ),
                  //         hintText: "Mobile Number",
                  //       ),
                  //     ),
                  //     ),
                  //     Padding(
                  //       padding:
                  //       EdgeInsets.symmetric(horizontal: 25, vertical: 16),
                  //       child:
                  //       TextFormField(
                  //       textInputAction: TextInputAction.next,
                  //       decoration: InputDecoration(
                  //         filled: true,
                  //         fillColor: Colors.transparent,
                  //         border: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(14.7),
                  //         ),
                  //         hintText: "Mobile Number",
                  //       ),
                  //     ),
                  //     ),
                  //
                  //   ],
                  // ),
                    SizedBox(height: 30,),
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        //Email
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
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        //Mobile number
                        Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          //password
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.transparent,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.7),
                              ),
                              hintText: "Mobile Number",
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        //Password
                        Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          //password
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
                          child:InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, '/Terms&condition');
                            },
                            child: Text(
                              'Terms & Conditon',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                  fontFamily: '  RobotoMono',
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ),
                        SizedBox(height: 50,),
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
                                  // Navigator.pushNamed(context, '/');
                                },
                                child: const Center(
                                  child: Text(
                                    'Continue',
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
