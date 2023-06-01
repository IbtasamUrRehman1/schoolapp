import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:echain_campus/widget/header.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomeWorkScreen extends StatefulWidget {
  @override
  _HomeWorkScreenState createState() => _HomeWorkScreenState();
}

enum filterOption { complete, not }

class _HomeWorkScreenState extends State<HomeWorkScreen>
    with SingleTickerProviderStateMixin {
  filterOption _filterOption = filterOption.complete;
  var _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var tabBar = TabBar(
      controller: _tabController,
      //This property will allow your tabs to be horizontally scrollable
      isScrollable: true,
      indicatorColor: Colors.black,
      labelColor: Colors.black,
      tabs: [
        //Tab 1
        //Tab 2
        //Tab 3
        //etc
      ],
    );

    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                PreferredSize(
                  preferredSize: Size.fromHeight(55.0), // here the desired height
                  child: new SliverAppBar(
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

                    pinned: true,
                    floating: true,
                    bottom: TabBar(
                      indicatorColor: Colors.deepPurple,
                      isScrollable: true,
                      tabs: [
                        Tab(child: Text('Class Work',style: GoogleFonts.quicksand(fontSize: 18,color: Color(0xffB9B9B9)),)),
                        Tab(child: Text('Home Work',style: GoogleFonts.quicksand(fontSize: 18,color: Color(0xffB9B9B9)),)),
                      ],
                    ),
//                    actions: <Widget>[
//                      Padding(
//                          padding: EdgeInsets.only(right: 20.0, top: 25),
//                          child: GestureDetector(
//                            onTap: () {},
//                            child: Icon(
//                              FontAwesomeIcons.bell,
//                              color: Color(0xffC6C8C7),
//                            ),
//                          )
//                      ),
//                    ],
                    elevation: 0.0,
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: <Widget>[
                DefaultTabController(
                  length: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
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
                              text: "Urdu",
                            ),
                            Tab(
                              text: "English",
                            ),
                            Tab(
                              text: "Science",
                            ),
                            Tab(
                              text: "Computer",
                            ),

                          ],
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          children: <Widget>[
                            SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    WorkReuseCard("Urdu", "1pm - 10pm", "100", "90" , "10-May-2021" , ""),
                                  ],
                                ),
                              ),
                            ),
                            Container(),
                            Container(),
                            Container(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // end of class work

                DefaultTabController(
                  length: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
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
                              text: "Urdu",
                            ),
                            Tab(
                              text: "English",
                            ),
                            Tab(
                              text: "Science",
                            ),
                            Tab(
                              text: "Computer",
                            ),

                          ],
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          children: <Widget>[
                            SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    TextButton(
                                      onPressed: (){
                                        showModalBottomSheet(
                                            context: context,
                                            builder: (context) {
                                              return Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.only(left:15,top: 10),
                                                    child: Text(
                                                      "Search by filter",
                                                      style: GoogleFonts.quicksand(
                                                        fontSize: 20,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: const Text('Complete'),
                                                    leading: Radio(
                                                      value: filterOption.complete,
                                                      groupValue: _filterOption,
                                                      onChanged: (filterOption value) {
                                                        setState(() {
                                                          _filterOption = value;
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                  ListTile(
                                                    title: const Text('Not Complete'),
                                                    leading: Radio(
                                                      value: filterOption.not,
                                                      groupValue: _filterOption,
                                                      onChanged: (filterOption value) {
                                                        setState(() {
                                                          _filterOption = value;
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Column(
                                                      children: [
                                                        Center(
                                                          child: TextButton(
                                                            onPressed: () {
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
                                                                  "Submit",
                                                                  style: GoogleFonts.quicksand(
                                                                    color: Colors.white,
                                                                    fontSize: 18,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              );
                                            });
                                      },
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: Row(
                                          children: [
                                            Icon(
                                              FontAwesomeIcons.filter,
                                              color: Colors.black,
                                              size: 18,
                                            ),
                                            SizedBox(width: 5,),
                                            Text(
                                              "Filter",
                                              style: GoogleFonts.quicksand(
                                                color: Colors.black,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    WorkReuseCard("Urdu", "1pm - 10pm", "100", "90" , "10-May-2021" , "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco la"),
                                  ],
                                ),
                              ),
                            ),
                            Container(),
                            Container(),
                            Container(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}



class WorkReuseCard extends StatelessWidget {
  WorkReuseCard(this.SubjectName,this.ClassTiming,this.totalMarks,this.obtainedMarks,this.date,this.detail);

  final String SubjectName;
  final String ClassTiming;
  final String totalMarks;
  final String obtainedMarks;
  final String date;
  final String detail;
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
              SizedBox(
                height: 15,
              ),
              Text(
                detail,
                style: TextStyle(
                  color: Color(0xffB9B9B9),
                  fontSize: 15,
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
                            "Timing",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
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
                            date,
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
                            "Marks",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            totalMarks + " / " + obtainedMarks,
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