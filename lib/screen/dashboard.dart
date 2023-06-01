import 'package:echain_campus/screen/setting_screen.dart';
import 'package:echain_campus/screen/teacher_report.dart';
import 'package:echain_campus/screen/timetable_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:echain_campus/screen/attendence_screen.dart';
import 'package:echain_campus/screen/chat_screen.dart';
import 'package:echain_campus/screen/fee_screen.dart';
import 'package:echain_campus/screen/application_screen.dart';
import 'package:echain_campus/widget/search_textfield.dart';
import 'homework_screen.dart';
import 'package:echain_campus/screen/exam_screen.dart';
import 'package:echain_campus/screen/notification_screen.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       appBar: PreferredSize(
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
           actions: <Widget>[
             Padding(
                 padding: EdgeInsets.only(right: 15.0, top: 25),
                 child: GestureDetector(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen()));
                   },
                   child: Icon(
                     FontAwesomeIcons.bell,
                     size: 20,
                     color: Color(0xffC6C8C7),
                   ),
                 )
             ),
             Padding(
                 padding: EdgeInsets.only(right: 20.0, top: 25),
                 child: GestureDetector(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen()));
                   },
                   child: Icon(
                     FontAwesomeIcons.tasks,
                     size: 18,
                     color: Color(0xffC6C8C7),
                   ),
                 )
             ),
           ],
         ),
       ),
        backgroundColor: Color(0xffF4F6F5),
        body: SingleChildScrollView(
          child: Column(
            children: [

              SearchTextField(),

              SizedBox(height:10),

              FlatButton(
                padding: EdgeInsets.zero,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AttendenceScreen()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10,right: 10 ,bottom: 10),
                  height: 90,
                  child: Card(
                    color: Color(0xff7EBDD6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left:20,right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Attendence',
                            style:GoogleFonts.montserrat(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 30,),
                          Image(
                            image: AssetImage("assets/attendence.PNG"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              FlatButton(
                padding: EdgeInsets.zero,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>TimeTableScreen()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10,right: 10, bottom: 10),
                  height: 90,
                  child: Card(
                    color: Color(0xff7EBDD6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left:20,right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Timetable',
                            style:GoogleFonts.montserrat(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 30,),
                          Image(
                            image: AssetImage("assets/timetable.PNG"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              FlatButton(
                padding: EdgeInsets.zero,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FeeScreen()));

                },
                child: Container(
                  margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  height: 90,
                  child: Card(
                    color: Color(0xff7EBDD6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left:20,right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Fee',
                            style:GoogleFonts.montserrat(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 30,),
                          Image(
                            image: AssetImage("assets/fees.PNG"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              FlatButton(
                padding: EdgeInsets.zero,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ApplicationScreen()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  height: 90,
                  child: Card(
                    color: Color(0xff7EBDD6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left:20,right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Application',
                            style:GoogleFonts.montserrat(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 30,),
                          Image(
                            image: AssetImage("assets/application.PNG"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              FlatButton(
                padding: EdgeInsets.zero,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeWorkScreen()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  height: 90,
                  child: Card(
                    color: Color(0xff7EBDD6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left:20,right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Homework',
                            style:GoogleFonts.montserrat(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 30,),
                          Image(
                            image: AssetImage("assets/homework.PNG"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              FlatButton(
                padding: EdgeInsets.zero,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ExamScreen()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  height: 90,
                  child: Card(
                    color: Color(0xff7EBDD6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left:20,right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exam',
                            style:GoogleFonts.montserrat(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 30,),
                          Image(
                            image: AssetImage("assets/homework.PNG"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              FlatButton(
                padding: EdgeInsets.zero,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TeacherReportScreen()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  height: 90,
                  child: Card(
                    color: Color(0xff7EBDD6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left:20,right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Teachers Report',
                            style:GoogleFonts.montserrat(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 30,),
                          Image(
                            image: AssetImage("assets/homework.PNG"),
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




class CheckAllLeaveApplication extends StatefulWidget {
  @override
  _CheckAllLeaveApplicationState createState() => _CheckAllLeaveApplicationState();
}

class _CheckAllLeaveApplicationState extends State<CheckAllLeaveApplication> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
