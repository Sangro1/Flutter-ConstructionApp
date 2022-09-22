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
                  height: 60,
                ),
                //Almost there
                Align(
                  alignment:Alignment.center,
                child:Text(
                  "Almost there,",
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(color: Colors.white),
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),),
                SizedBox(
                  height: 5,
                ),
            Align(
              alignment:Alignment.center,
              child:
                Text(
                  "Just little more to go!",
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(color: Colors.white),
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                  ),
                ),
            ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundColor: Colors.white,
                          backgroundImage: NetworkImage(
                              'https://avatars.githubusercontent.com/u/87020382?s=400&u=fed6383984f3e8b50dd6c30eddc6129525196e6a&v=4'),
                        ),
                      ),
                      Align(
                        alignment:Alignment.centerRight,
                        child:
                      Text(
                        "Upload Profile picture",
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(color: Colors.white),
                            fontSize: 19,
                            fontWeight: FontWeight.w700),
                      ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 15,),
                // Padding(padding:EdgeInsets.symmetric(vertical: 0.0,horizontal:30),
                // child:
                // Container(
                //   height: 50,
                //   width: 100,
                //   child: Material(
                //     borderRadius: BorderRadius.circular(11),
                //     shadowColor: Colors.black,
                //     color: Colors.blue,
                //     elevation: 12,
                //     child: GestureDetector(
                //       onTap: () {
                //         // Navigator.pushNamed(context, '/');
                //       },
                //       child: const Center(
                //         child: Text(
                //           'Upload',
                //           style: TextStyle(
                //               color: Colors.white,
                //               fontSize: 18,
                //               // fontWeight: FontWeight.bold,
                //               fontFamily: 'Montserrat'),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12.3, horizontal: 15.3),
               child: Align(alignment: Alignment.centerLeft,
                  child: Text("You are",
                    style: GoogleFonts.lato(
                        textStyle: TextStyle(color: Colors.white),
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  ),
                ),),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Male,
                    Container(
                      height: 50,
                      width: 180,
                      child: Material(
                        // borderRadius: BorderRadius.circular(13),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15),

                        ),

                        shadowColor: Colors.black,
                        color: Colors.blue,
                        elevation: 12,
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.pushNamed(context, '/malePage');
                          },
                          child: const Center(
                            child: Text(
                              'Male',
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
                   //Female
                    Container(
                      height: 50,
                      width: 180,
                      child: Material(
                        borderRadius: BorderRadius.only(
                          topRight:Radius.circular(15),
                          bottomRight:Radius.circular(15),
                        ),
                        shadowColor: Colors.black,
                        color: Colors.white,
                        elevation: 12,
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.pushNamed(context, '/femalePage');
                          },
                          child: const Center(
                            child: Text(
                              'Female',
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
                  ],
                ),
                Padding(
                  padding:
                  EdgeInsets.symmetric(vertical: 9.3, horizontal: 14.3),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.7),
                      ),
                      hintText: "Your Occupation",
                    ),
                  ),
                ),
                Padding(
                  padding:
                  EdgeInsets.symmetric(vertical: 9.3, horizontal: 14.3),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.7),
                      ),
                      hintText: "Date of Birth",
                    ),
                  ),
                ),
                Padding(
                  padding:
                  EdgeInsets.symmetric(vertical: 9.3, horizontal: 14.3),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.7),
                      ),
                      hintText: "Address Line 1",
                    ),
                  ),
                ),
                Padding(
                  padding:
                  EdgeInsets.symmetric(vertical: 9.3, horizontal: 14.3),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.7),
                      ),
                      hintText: "Address Line 2",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.3, vertical: 14.3),
                  child: Container(
                    height: 55,
                    width: 350,
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
                            'Submit',
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
    );
  }
}
