import 'package:echain_campus/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffF4F6F5),
        body: Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: new EdgeInsets.all(25.0),
                child: Container(
                  height: 275.0,
                  width: 275.0,
                  child: new Image.asset('assets/logo.PNG'),
                ),
              ),
              Text(
                'Echaincampus.io',
                style:  GoogleFonts.quicksand(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height:5,),
              Text(
                'Be the part of echaincampus',
                style: GoogleFonts.quicksand(
                  fontSize: 17,
                  fontWeight: FontWeight.w200,
                  color: Colors.black,
                ),
              ),
            //  SizedBox(height: 30,),
              FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xffD4D4D4),
                    ),
                    child: Icon(
                      //FontAwesomeIcons.longArrowAltRight,
                      Icons.arrow_forward,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
              ),
//              TextButton(
//
//              ),
            ],
          ),
        ),
      ),
    );
  }
}
