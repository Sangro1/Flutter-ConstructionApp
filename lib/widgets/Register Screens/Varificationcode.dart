import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerfiWidget extends StatelessWidget {
  const VerfiWidget({Key? key}) : super(key: key);

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
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Verification Code",
                  style: GoogleFonts.lato(
                    textStyle:
                        TextStyle(color: Colors.white, letterSpacing: .5),
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "We have just sent a code to your mobile\nplease enter it below",
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(color: Colors.white),
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 75,
                      child: Material(
                        borderRadius: BorderRadius.circular(12),
                        shadowColor: Colors.grey,
                        elevation: 13,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 75,
                      child: Material(
                        borderRadius: BorderRadius.circular(13),
                        shadowColor: Colors.grey,
                        elevation: 13,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 75,
                      child: Material(
                        borderRadius: BorderRadius.circular(13),
                        shadowColor: Colors.grey,
                        elevation: 13,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 75,
                      child: Material(
                        borderRadius: BorderRadius.circular(13),
                        shadowColor: Colors.grey,
                        elevation: 13,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 35, horizontal: 16),
                  child: Container(
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(14),
                      shadowColor: Colors.black12,
                      color: Colors.blue,
                      elevation: 13,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/submitRoute');
                        },
                        child: const Center(
                          child: Text(
                            'Verify',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 230,
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
              Container (
              alignment: Alignment.centerLeft,
              child: Text(
                'Did not get yet?',
                style: GoogleFonts.lato(
                  textStyle: TextStyle(color: Colors.white),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
              Container(
              alignment:Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  // Navigator.pushNamed(context, '/ForgotRoute');
                },
                child: Text(
                  'Resend',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'RobotoMono',
                      decoration: TextDecoration.underline),
                ),
              ),
            ),],),
            ],
            ),

          ),
        ),
      ),
    );
  }
}
