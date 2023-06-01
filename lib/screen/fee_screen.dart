import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:echain_campus/widget/header.dart';
import 'package:echain_campus/screen/fee_history.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:echain_campus/screen/amount_due_screen.dart';

class FeeScreen extends StatefulWidget {
  @override
  _FeeScreenState createState() => _FeeScreenState();
}

class _FeeScreenState extends State<FeeScreen> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: Header(context),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  "Fee Section",
                  style: GoogleFonts.quicksand(
                    color: Color(0xffB9B9B9),
                    fontSize: 22,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left:10,right: 10),
                child: Card(
                  color: Color(0xff7EBDD6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 15,left: 15,bottom: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "My Balance",
                                style: GoogleFonts.raleway(
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "20,580 RS",
                                style: TextStyle(
                                  fontSize: 32,
                                  color: Color(0xff1C5B74),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          FontAwesomeIcons.chevronRight,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AmountDue()));
                },
                child: Card(
                  color: Color(0xff7EBDD6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 15,left: 15,bottom: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Amount due",
                                style: GoogleFonts.raleway(
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "0 RS",
                                style: TextStyle(
                                  fontSize: 32,
                                  color: Color(0xff1C5B74),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          FontAwesomeIcons.chevronRight,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left:10,right: 10),
                child: FlatButton(
                  padding: EdgeInsets.zero,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FeeHistory()));

                  },
                  child: Card(
                    color: Color(0xff7EBDD6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 15,left: 15,bottom: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Fee History",
                                  style: GoogleFonts.raleway(
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Check",
                                  style: TextStyle(
                                    fontSize: 32,
                                    color: Color(0xff1C5B74),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            FontAwesomeIcons.chevronRight,
                            color: Colors.white,
                          ),
                        ],
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
