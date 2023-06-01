import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


PreferredSize Header(BuildContext context) {
  return PreferredSize(
    preferredSize: Size.fromHeight(55.0), // here the desired height
    child: AppBar(
      backgroundColor: Color(0xffF4F6F5),
      leading: Padding(
          padding: EdgeInsets.only(right: 20.0, top: 25, left: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Color(0xffC6C8C7),
            ),
          )
      ),
      title: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, right: 10),
          child: Text(
            "Beconhouse School",
            style: GoogleFonts.quicksand(
              fontSize: 20,
              color: Color(0xffC6C8C7),
            ),
          ),
        ),
      ),
      elevation: 0.0,
//      actions: <Widget>[
//        Padding(
//            padding: EdgeInsets.only(right: 20.0, top: 25),
//            child: GestureDetector(
//              onTap: () {},
//              child: Icon(
//                FontAwesomeIcons.bell,
//                color: Color(0xffC6C8C7),
//              ),
//            )
//        ),
//      ],
    ),
  );
}


