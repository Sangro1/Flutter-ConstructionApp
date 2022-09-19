import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class submitWidget extends StatefulWidget {
  const submitWidget({Key? key}) : super(key: key);

  @override
  State<submitWidget> createState() => _submitWidgetState();
}

class _submitWidgetState extends State<submitWidget> {
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
    Text("Almost there,",
    style: GoogleFonts.lato(
    textStyle: TextStyle(color: Colors.white),
    fontSize: 30,
    fontWeight: FontWeight.w700,
    ),),
    SizedBox(height: 5,),
    Text("Just little more to go!",
    style: GoogleFonts.lato(
    textStyle: TextStyle(color: Colors.white),
    fontSize: 45,
    fontWeight: FontWeight.w500,
    ),
    ),
      Container(
        height: 100,
        width: 200,
        child: const CircleAvatar(
          backgroundColor: Colors.grey,
        ),
      ),
      Text("Upload Profile picture"),
      Container(

      )
  ],
    ),
    ),
    ),
    ),
    );
  }
}
