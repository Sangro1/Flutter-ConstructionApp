import 'dart:ui';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MyHomePage  extends StatelessWidget {
  const MyHomePage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // PageController pageController = PageController(viewportFraction: 0.85);
    var _currPageValue = 0.0;
    // var _progressIndicator = false;
    // double _scaleFactor = 0.8;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
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

            child: Column(
              children: [
                SizedBox(height: 100),
                Text(
                  'N U L E A S E',
                  style: GoogleFonts.lato(
                    textStyle:
                    TextStyle(color: Colors.black87, letterSpacing: .5),
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 100),
                Text(
                  'Introducing the\nLandloard/Tenants App\nfrom Nulease.',
                  style: GoogleFonts.roboto(
                    textStyle:
                    TextStyle(color: Colors.white70, letterSpacing: .5),
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 300),
                DotsIndicator(
                  dotsCount: 3,
                  position: _currPageValue,
                  decorator: DotsDecorator(
                    size: const Size.square(9.0),
                    activeSize: const Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
                SizedBox(height: 25,),
                const Padding(
                    padding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 55,
                      width: 170,
                      child: Material(
                        borderRadius: BorderRadius.circular(10),
                        shadowColor: Colors.black,
                        elevation: 12,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context,'/Login');
                          },
                          child: const Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 55,
                      width: 170,
                      child: Material(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                        shadowColor: Colors.black,
                        elevation: 12,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context,'/registerRoute');
                          },
                          child: const Center(
                            child: Text(
                              'Register',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Align(
                  alignment: Alignment.bottomCenter,

                  child:
                InkWell(
                  onTap: () {
                    // Navigator.pushNamed(context, "/submitRoute");
                  },
                  child: Text(
                    'SKIP',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                ),
              ],
            ),



          ),
        ),
      ),
    );
  }
  }







