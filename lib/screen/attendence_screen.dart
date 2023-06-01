import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:echain_campus/widget/header.dart';
import 'package:echain_campus/widget/pie_chat.dart';
import 'package:echain_campus/screen/application_screen.dart';

class AttendenceScreen extends StatefulWidget {
  @override
  _AttendenceScreenState createState() => _AttendenceScreenState();
}

class _AttendenceScreenState extends State<AttendenceScreen> {
  Map<String, double> dataMap = new Map();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: Header(context),

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  "Attendence",
                  style: GoogleFonts.quicksand(
                    color: Color(0xffB9B9B9),
                    fontSize: 22,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Card(
                elevation: 0,
                margin: EdgeInsets.all(10),
                color: Color(0xffededed),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width - 20,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: CircleAvatar(
                              radius: 60,
                              backgroundImage: AssetImage("assets/joe.jpg"),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "Joe Bidden",
                            style: GoogleFonts.montserrat(
                              fontSize: 25,
                              color: Colors.black,
                            ),
                          ),

                          SizedBox(height: 20,),
                          Pie(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Card(
                elevation: 0,
                margin: EdgeInsets.all(10),
                color: Color(0xffededed),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width - 20,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15,),
                            child: Text(
                              "Today's Status",
                              style: GoogleFonts.montserrat(
                                fontSize: 18,
                                color: Color(0xff787777),
                              ),
                            ),
                          ),
                          Divider(
                            color: Color(0xff787777),
                          ),

                          Container(
                            child: Column(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => ApplicationScreen()));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        top: 10, bottom: 20),
                                    height: 50,
                                    width: MediaQuery
                                        .of(context)
                                        .size
                                        .width - 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xff57AACB),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Apply for leave",
                                        style: GoogleFonts.quicksand(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
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
