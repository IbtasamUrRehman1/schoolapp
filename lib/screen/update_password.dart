import 'package:flutter/material.dart';

import 'package:echain_campus/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:echain_campus/widget/textfield.dart';


class UpdatePassword extends StatefulWidget {
  @override
  _UpdatePasswordState createState() => _UpdatePasswordState();
}

class _UpdatePasswordState extends State<UpdatePassword> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffF4F6F5),
          leading: Padding(
              padding: EdgeInsets.only(top: 25,),
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
          elevation: 0.0,
        ),
        backgroundColor: Color(0xffF4F6F5),
        body: Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: new Image.asset('assets/echain.png'),
                    ),
                    Text(
                      'echaincampus.io',
                      style: GoogleFonts.quicksand(
                        fontSize: 22,
                        fontWeight: FontWeight.w200,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),

              Text(
                'Update Password',
                style: GoogleFonts.varelaRound(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20,),
              EntryTextField("Old Password",""),
              SizedBox(height: 20,),
              EntryTextField("New Password",""),
              SizedBox(height: 20,),
              EntryTextField("Confirm Password",""),

              TextButton(
                onPressed: (){
                },
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  height: 50,
                  width: MediaQuery.of(context).size.width - 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Color(0xff616F80),
                  ),
                  child: Center(
                    child: Text(
                      "Proceed",
                      style: GoogleFonts.varelaRound(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
