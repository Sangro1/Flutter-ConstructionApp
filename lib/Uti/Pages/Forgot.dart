import 'dart:ui';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({super.key, required this.title});
  final String title;

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //
      // ),
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
                  'Forgot your password?',
                  style: GoogleFonts.lato(
                    textStyle:
                    TextStyle(color: Colors.white54, letterSpacing: .5),
                    fontSize: 30,
                    fontWeight: FontWeight.w700,),),

                const Padding(
                    padding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
                const SizedBox(
                  height: 10,
                ),

                Text('Did not get yet?'),
                InkWell(
                    onTap: () {},
                    child: Text(
                     'Resend',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                      ),
                    )),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
