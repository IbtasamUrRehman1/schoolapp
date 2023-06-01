import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:echain_campus/widget/header.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class TeacherReportScreen extends StatefulWidget {

  @override
  _TeacherReportScreenState createState() => _TeacherReportScreenState();
}

class _TeacherReportScreenState extends State<TeacherReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(context),
      backgroundColor: Color(0xffF4F6F5),
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  "Teacher Reports",
                  style: GoogleFonts.quicksand(
                    color: Color(0xffB9B9B9),
                    fontSize: 22,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                child: ButtonsTabBar(
                  backgroundColor: Colors.white,
                  unselectedBackgroundColor: Colors.white,
                  radius: 20,
                  unselectedLabelStyle: GoogleFonts.varelaRound(color: Colors.black,),
                  labelStyle: GoogleFonts.varelaRound(color: Colors.deepPurple,),
                  tabs: [
                    Tab(
                      text: "New",
                    ),
                    Tab(
                      text: "Seen",
                    ),
                    Tab(
                      text: "Archived / Removed",
                    ),

                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    SingleChildScrollView(
                        child: Column(
                          children: [
                            FlatButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailReportScreen()));
                                },
                                child: TeacherReportCard("Report Title", "Urdu", "Ibtasam", "10-May-2021",)),
                          ],
                        ),
                    ),
                    Container(),
                    Container(),
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



class TeacherReportCard extends StatelessWidget {
  TeacherReportCard(this.ReportTitle,this.CourseName,this.TeacherName,this.CreateTime);

  final String ReportTitle;
  final String TeacherName;
  final String CourseName;
  final String CreateTime;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Container(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text(
                     ReportTitle,
                     style: GoogleFonts.varelaRound(
                       fontSize: 17,
                       fontWeight: FontWeight.bold,
                       color: Color(0xff5C636D),
                     ),
                   ),
                   Icon(
                     Icons.arrow_forward_ios,
                     size: 20,
                     color: Color(0xffB9B9B9),

                   ),
                 ],
               ),
             ),
              SizedBox(height: 6,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5,),
                          Text(
                            "Course",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            CourseName,
                            style: TextStyle(
                              color: Color(0xffB9B9B9),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5,),
                          Text(
                            "Teacher",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            TeacherName,
                            style: TextStyle(
                              color: Color(0xffB9B9B9),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5,),
                          Text(
                            "Date",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            CreateTime,
                            style: TextStyle(
                              color: Color(0xffB9B9B9),
                              fontSize: 14,
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



class DetailReportScreen extends StatefulWidget {
  @override
  _DetailReportScreenState createState() => _DetailReportScreenState();
}

class _DetailReportScreenState extends State<DetailReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(context),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "Detail Report",
                style: GoogleFonts.quicksand(
                  color: Color(0xffB9B9B9),
                  fontSize: 22,
                ),
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),

    );
  }
}

