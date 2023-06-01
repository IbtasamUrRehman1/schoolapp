import 'package:echain_campus/screen/update_password.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:echain_campus/screen/chat_screen.dart';
import 'package:echain_campus/screen/notification_screen.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(55.0), // here the desired height
          child: AppBar(
            backgroundColor: Color(0xffF4F6F5),
            leading: Padding(
                padding: EdgeInsets.only( top: 25, left: 20),
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
                padding: const EdgeInsets.only(top: 25, right: 20),
                child: Text(
                  "Settings",
                  style: GoogleFonts.quicksand(
                    fontSize: 20,
                    color: Color(0xffC6C8C7),
                  ),
                ),
              ),
            ),
            elevation: 0.0,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UpdatePassword()));
                  },
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xff7EBDD6),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    width: MediaQuery.of(context).size.width - 20,
                    child: Padding(
                      padding: const EdgeInsets.only(left:15 , right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Update Password',
                            style:GoogleFonts.montserrat(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 30,),
                          Icon(
                            FontAwesomeIcons.key,
                            size: 30,
                            color: Color(0xff306F88),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen()));
                  },
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xff7EBDD6),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    width: MediaQuery.of(context).size.width - 20,
                    child: Padding(
                      padding: const EdgeInsets.only(left:15 , right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Notification',
                            style:GoogleFonts.montserrat(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 30,),
                          Icon(
                            FontAwesomeIcons.bell,
                            size: 30,
                            color: Color(0xff306F88),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen()));
                  },
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xff7EBDD6),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    width: MediaQuery.of(context).size.width - 20,
                    child: Padding(
                      padding: const EdgeInsets.only(left:15 , right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Chat',
                            style:GoogleFonts.montserrat(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 30,),
                          Icon(
                            FontAwesomeIcons.comments,
                            size: 30,
                            color: Color(0xff306F88),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AllSavedAccount()));
                  },
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xff7EBDD6),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    width: MediaQuery.of(context).size.width - 20,
                    child: Padding(
                      padding: const EdgeInsets.only(left:15 , right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Saved Account',
                            style:GoogleFonts.montserrat(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 30,),
                          Icon(
                            FontAwesomeIcons.user,
                            size: 30,
                            color: Color(0xff306F88),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                InkWell(
                  onTap:  _launchURL,
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xff7EBDD6),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    width: MediaQuery.of(context).size.width - 20,
                    child: Padding(
                      padding: const EdgeInsets.only(left:15 , right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Help Center',
                            style:GoogleFonts.montserrat(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 30,),
                          Icon(
                            FontAwesomeIcons.question,
                            size: 30,
                            color: Color(0xff306F88),
                          ),
                        ],
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

  _launchURL() async {
    const url = 'https://help.echaincampus.io';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}




class AllSavedAccount extends StatefulWidget {
  @override
  _AllSavedAccountState createState() => _AllSavedAccountState();
}

class _AllSavedAccountState extends State<AllSavedAccount> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(55.0), // here the desired height
          child: AppBar(
            backgroundColor: Color(0xffF4F6F5),
            leading: Padding(
                padding: EdgeInsets.only( top: 25, left: 20),
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
                padding: const EdgeInsets.only(top: 25, right: 20),
                child: Text(
                  "Saved Account",
                  style: GoogleFonts.quicksand(
                    fontSize: 20,
                    color: Color(0xffC6C8C7),
                  ),
                ),
              ),
            ),
            elevation: 0.0,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:10,top: 10),
                child: TextButton(
                  onPressed: (){

                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    child: Card(
                      color: Color(0xff7EBDD6),
                      child: Padding(
                        padding: const EdgeInsets.only(left:15,right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                                "Add New Account",
                                style: GoogleFonts.quicksand(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                )
                            ),
                            Icon(
                              Icons.plus_one,
                              color: Color(0xff306F88),
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),




              Padding(
                padding: const EdgeInsets.only(left:10,),
                child: TextButton(
                  onPressed: (){

                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    child: Card(
                      color: Color(0xff7EBDD6),
                      child: Padding(
                        padding: const EdgeInsets.only(left:15,right: 15),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.globe,
                              color: Color(0xff306F88),
                              size: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:20,top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      "UserName",
                                      style: GoogleFonts.quicksand(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      )
                                  ),
                                  Text(
                                      "Password",
                                      style: GoogleFonts.quicksand(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      )
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
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
