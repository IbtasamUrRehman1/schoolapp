import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/flutter_widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:echain_campus/widget/search_textfield.dart';
import 'package:echain_campus/widget/header.dart';

int currentTab = 0;

class TimeTableScreen extends StatefulWidget {
  @override
  _TimeTableScreenPage createState() => _TimeTableScreenPage();
}

class TabModel {
  String text;

  TabModel({this.text});
}

List<TabModel> _tabList = [
  TabModel(text: "Monday"),
  TabModel(text: "Tuesday"),
  TabModel(text: "Wednesday"),
  TabModel(text: "Thursday"),
  TabModel(text: "Friday"),

];

class _TimeTableScreenPage extends State<TimeTableScreen>
    with SingleTickerProviderStateMixin {
  PageController _controller = PageController(initialPage: 0, keepPage: false);

  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionListener = ItemPositionsListener.create();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffF4F6F5),
        appBar: Header(context),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "Class Timtable",
                style: GoogleFonts.quicksand(
                  color: Color(0xffB9B9B9),
                  fontSize: 22,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width - 20,
              height: MediaQuery.of(context).size.height * 0.75,
              color: Color(0xffFEFEFE),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Text(
                      "Class 7th Section B",
                      style: GoogleFonts.quicksand(
                        color: Color(0xffB9B9B9),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                      height: 35,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Color(0xffd6d6d6),
                              width: 1.0,
                          ),
                      ),
                      child: ScrollablePositionedList.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _tabList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              gradient: currentTab == index
                                  ? LinearGradient(
                                colors: [
                                  Color(0xff60C583),
                                  Color(0xff60C583),
                                ],
                              )
                                  : null,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: FlatButton(
                              color: Colors.transparent,
                              onPressed: () {
                                setState(() {
                                  currentTab = index;
                                  _controller.jumpToPage(currentTab);
                                });
                              },
                              child: Text(
                                _tabList[index].text,
                                style: GoogleFonts.varelaRound(
                                  fontSize: 14,
                                  color: Color(0xff6e6e6e),
                                ),
                              ),
                            ),
                          );
                        },
                        itemScrollController: itemScrollController,
                        itemPositionsListener: itemPositionListener,
                      ),
                  ),
                  Flexible(
                    child: Container(
                      child: PageView(
                        controller: _controller,
                        onPageChanged: (pageId) {
                          setState(() {
                            currentTab = pageId;
                            itemScrollController.scrollTo(
                                index: currentTab, duration: Duration(seconds: 1));
                          });
                        },
                        children: <Widget>[
                          SingleChildScrollView(
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 30),
                              child: Column(
                                children: [
                                  SubjectCards("Computer Science","8:15am - 10:15am"),
                                  SubjectCards("Mathamatics","8:15am - 10:15am"),
                                  Container(
                                    width: MediaQuery
                                        .of(context)
                                        .size
                                        .width,
                                    child: Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(20),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceBetween,
                                          children: [
                                            Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .start,
                                                children: [
                                                  Text(
                                                    "Lunch Break",
                                                    style: GoogleFonts.varelaRound(
                                                      fontSize: 17,
                                                      fontWeight: FontWeight.bold,
                                                      color: Color(0xff5C636D),
                                                    ),
                                                  ),
                                                  SizedBox(height: 6,),
                                                  Text(
                                                    "11:15am - 11:15am",
                                                    style: TextStyle(
                                                      color: Color(0xffB9B9B9),
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Image(
                                              image: AssetImage(
                                                "assets/lunch.PNG",
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SubjectCards("Urdu","8:15am - 10:15am",),
                                  SubjectCards("English","8:15am - 10:15am", ),
                                ],
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 30),
                              color: Color(0xffFFFDFE),
                              child: Column(
                                children: [
                                ],
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 30),
                              color: Color(0xffFFFDFE),
                              child: Column(
                                children: [
                                ],
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 30),
                              color: Color(0xffFFFDFE),
                              child: Column(
                                children: [
                                ],
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 30),
                              color: Color(0xffFFFDFE),
                              child: Column(
                                children: [
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SubjectCards extends StatelessWidget {
  SubjectCards(this.SubjectName,this.ClassTiming,);

  final String SubjectName;
  final String ClassTiming;
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
              Text(
                SubjectName,
                style: GoogleFonts.varelaRound(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff5C636D),
                ),
              ),
              SizedBox(height: 6,),
              Text(
                ClassTiming,
                style: TextStyle(
                  color: Color(0xffB9B9B9),
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//0xff85B371

/*
* */