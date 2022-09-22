import 'dart:ui';
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
  String email = '', pass = '', name = '', last = '';
  bool _isObsecure = false;


  final double topWidgetHeight = 40.0;
  final double avatarRadius = 20.0;

  @override
  void initState() {
    super.setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.back,
            color: Colors.white,
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
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.0),
              ),
              child:SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 80),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "Get Started in just a\nFew Steps.",
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(color: Colors.white70),
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  //I am text
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 12.3, horizontal: 15.3),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'I am',
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(color: Colors.black),
                          fontSize: 21,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(height: 10),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Landlord,
                      Container(
                        height: 55,
                        width: 180,
                        child: Material(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(13),
                            bottomLeft:Radius.circular(13),
                          ),
                          shadowColor: Colors.black,
                          color: Colors.white,
                          elevation: 12,
                          child: GestureDetector(
                            onTap: () {
                              // Navigator.pushNamed(context, '/');
                            },
                            child: const Center(
                              child: Text(
                                'Landlord',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Positioned(
                        child: CircleAvatar(
                          radius: avatarRadius,
                          backgroundColor: Colors.blue,
                          child:Text('or')
                        ),
                        left: (MediaQuery.of(context).size.width/2) - avatarRadius,
                        top: topWidgetHeight - avatarRadius,
                      ),

                      // Container(
                      //   child: Material(
                      //     borderRadius: BorderRadius.circular(30),
                      //     shadowColor: Colors.black,
                      //     color: Colors.blue,
                      //     elevation: 12,
                      //     child: Center(
                      //       child: Text(
                      //         "or",
                      //         style: TextStyle(
                      //             color: Colors.white,
                      //             fontSize: 16,
                      //             fontFamily: "Montserrat"),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Container(
                        height: 55,
                        width: 180,
                        child: Material(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(13),
                            bottomRight: Radius.circular(13),
                          ),
                          shadowColor: Colors.black,
                          color: Colors.blue,
                          elevation: 12,
                          child: GestureDetector(
                            onTap: () {
                              // Navigator.pushNamed(context, '/');

                            },
                            child: const Center(
                              child: Text(
                                'Tenant',
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
                    ],
                  ),
                  SizedBox(height: 18),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 9.3, horizontal: 14.3),
                    child: Row(
                      //   // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //first name
                        Flexible(
                          child: TextFormField(
                            // style: TextStyle(fontSize:10, color: Colors.red),
                            decoration: InputDecoration(
                              fillColor: Colors.black,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.7),
                              ),
                              hintText: "First Name",
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        //last name
                        Flexible(
                          child: TextFormField(
                            // style: TextStyle(fontSize:15),
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              fillColor: Colors.grey,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.7),
                              ),
                              hintText: "Last Name",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  //Email AD
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 9.3, horizontal: 14.3),
                    child: TextFormField(
                      // style: TextStyle(fontSize:10, color: Colors.red),
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        fillColor: Colors.grey,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14.7),
                        ),
                        hintText: "Email Address",
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 16,
                  ),

                  //MO.no
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 9.3, horizontal: 14.3),
                    child: TextFormField(
                      // style: TextStyle(fontSize:10, color: Colors.red),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        fillColor: Colors.grey,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14.7),
                        ),
                        hintText: "Mobile Number",
                      ),
                    ),
                  ),
                  SizedBox(height: 16),

                  //Pass
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 9.3, horizontal: 14.3),
                    child: TextFormField(
                      // style: TextStyle(fontSize:10, color: Colors.red),
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        fillColor: Colors.grey,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14.7),
                        ),
                        hintText: "Password",
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 9.3, horizontal: 14.3),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'By Clicking register,you agree to our',
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(color: Colors.white),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomCenter,
                          child: InkWell(
                            onTap: () {
                              // Navigator.pushNamed(context, '/TermsRoute');
                            },
                            child: Text(
                              'Terms & Condition',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  fontFamily: 'RobotoMono',
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Container(
                      height: 55,
                      width: 300,
                      child: Material(
                        borderRadius: BorderRadius.circular(13),
                        shadowColor: Colors.black,
                        color: Colors.blue,
                        elevation: 12,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/verficationRoute');
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
            ),
          ),
        ),
      ),
      ),
    );
  }
}
