import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:echain_campus/widget/header.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ExamScreen extends StatefulWidget {
  @override
  _ExamScreenState createState() => _ExamScreenState();
}

enum filterOption { complete, not }

class _ExamScreenState extends State<ExamScreen>
    with SingleTickerProviderStateMixin {
  filterOption _filterOption = filterOption.complete;
  var _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 4, vsync: this);
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
      length: 4,
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
                        Tab(child: Text('First term',style: GoogleFonts.quicksand(fontSize: 15.5,color: Color(0xffB9B9B9)),)),
                        Tab(child: Text('Mid Term',style: GoogleFonts.quicksand(fontSize: 15.5,color: Color(0xffB9B9B9)),)),
                        Tab(child: Text('Final term',style: GoogleFonts.quicksand(fontSize: 15.5,color: Color(0xffB9B9B9)),)),
                        Tab(child: Text('Final Result',style: GoogleFonts.quicksand(fontSize: 15.5,color: Color(0xffB9B9B9)),)),
                      ],
                    ),
                    actions: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(right: 20.0, top: 25),
                          child: GestureDetector(
                            onTap: () {},
                            child: Icon(
                              FontAwesomeIcons.bell,
                              color: Color(0xffC6C8C7),
                            ),
                          )
                      ),
                    ],
                    elevation: 0.0,
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: <Widget>[
                Container(),
                Container(),
                Container(),
                Container(),
              ],
            ),
          )),
    );
  }
}

