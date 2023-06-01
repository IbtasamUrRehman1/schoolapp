import 'package:echain_campus/widget/header.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';



class NotificationScreen extends StatefulWidget {

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
                  "Notifications",
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
                    Container(),
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

