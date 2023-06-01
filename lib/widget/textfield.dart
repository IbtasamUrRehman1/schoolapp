import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class EntryTextField extends StatelessWidget {
  EntryTextField(this.title,this.hint);
  String title;
  String hint;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: GoogleFonts.quicksand(fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: new InputDecoration(
                hintText: hint,
                hintStyle: GoogleFonts.quicksand(
                  fontSize:16,
                ),
                contentPadding: EdgeInsets.all(20),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffE7E8E8)),
                ),
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10),
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              obscureText: true,
            ),
          ),
        ],
      ),
    );
  }
}
