import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:echain_campus/widget/header.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:echain_campus/widget/search_textfield.dart';
class FeeHistory extends StatefulWidget {
  @override
  _FeeHistoryState createState() => _FeeHistoryState();
}

class _FeeHistoryState extends State<FeeHistory> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: Header(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SearchTextField(),
              SizedBox(height: 15,),
              Container(
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: <Widget>[
                    Card(
                      color: Color(0xff7EBDD6),
                      child: ListTile(
                        title: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "January",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "10-May-2020",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 10,top: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Card(
                                      color:Color(0xff1C5B74),
                                      child:Padding(
                                        padding: const EdgeInsets.only(left:5,right: 5, bottom: 10),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top:8.0,bottom: 8),
                                              child: Text(
                                                "Total Fee",
                                                style: GoogleFonts.quicksand(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "15,000",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ),
                                    Card(
                                        color:Color(0xff1C5B74),

                                        child:Padding(
                                          padding: const EdgeInsets.only(left:5,right: 5, bottom: 10),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(top:8.0,bottom: 8),
                                                child: Text(
                                                  "Submited Fee",
                                                  style: GoogleFonts.quicksand(
                                                    fontSize: 16,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                "15,000",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                    ),
                                    Card(
                                        color:Color(0xff1C5B74),
                                        child:Padding(
                                          padding: const EdgeInsets.only(left:5,right: 5,bottom: 10),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(top:8.0,bottom: 8),
                                                child: Text(
                                                  "Scolarship",
                                                  style: GoogleFonts.quicksand(
                                                    fontSize: 16,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                "No",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                    ),
                                    SizedBox(height: 10,),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                   
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
