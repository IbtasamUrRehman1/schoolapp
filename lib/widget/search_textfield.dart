import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class SearchTextField extends StatefulWidget {
  @override
  _SearchTextFieldState createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width - 30,
      height: 60,
      padding: EdgeInsets.only(top:20.0),
      child: TextField(
        autocorrect: true,
        decoration: InputDecoration(
          hintText: 'Search',
          prefixIcon: Icon(Icons.search, size:22),
          hintStyle: GoogleFonts.quicksand(fontSize:16,color: Colors.grey),
          filled: true,
          contentPadding: EdgeInsets.only(top: 10),
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
