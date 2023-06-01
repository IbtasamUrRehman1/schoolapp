import 'package:flutter/material.dart';
import 'package:echain_campus/widget/header.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
                  "Chat Area",
                  style: GoogleFonts.quicksand(
                    color: Color(0xffB9B9B9),
                    fontSize: 22,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left:8,),
                child:Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/joe.jpg"),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ibtasam",
                          style: Theme.of(context).textTheme.caption,
                        ),
                        SizedBox(height: 5,),
                        Container(
                          constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * .8),
                          padding: const EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            color: Color(0xff61aeed),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                            ),
                          ),
                          child: Text(
                            "Lorem ipsum began as scrambled, nonsensical Latin derived from Cicero's 1st-century BC text De Finibus Bonorum et Malorum.",
                            style: Theme.of(context).textTheme.body1.apply(
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left:10,),
                child:Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * .8),
                          padding: const EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            color: Color(0xff61aeed),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                            ),
                          ),
                          child: Text(
                            "Lorem ipsum began as scrambled, nonsensical Latin derived from Cicero's 1st-century BC text De Finibus Bonorum et Malorum.",
                            style: Theme.of(context).textTheme.body1.apply(
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 5,),
                    Padding(
                      padding: const EdgeInsets.only(top:8.0,right: 10,),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/joe.jpg"),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left:8,),
                child:Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/joe.jpg"),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      margin: EdgeInsets.only(top: 16),
                      child: Text(
                        "Is typing something...",
                        style: Theme.of(context).textTheme.body1.apply(
                          color: Colors.black87,
                          fontSizeFactor: 1.2,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
//              Container(
//                alignment: Alignment(0.0, 55),
//                margin: EdgeInsets.all(15.0),
//                height: 61,
//                child: Row(
//                  children: [
//                    Expanded(
//                      child: Container(
//                        decoration: BoxDecoration(
//                          color: Colors.white,
//                          borderRadius: BorderRadius.circular(35.0),
//                          boxShadow: [
//                            BoxShadow(
//                                offset: Offset(0, 3),
//                                blurRadius: 5,
//                                color: Colors.grey)
//                          ],
//                        ),
//                        child: Row(
//                          children: [
//                            IconButton(
//                                icon: Icon(Icons.face), onPressed: () {}),
//                            Expanded(
//                              child: TextField(
//                                decoration: InputDecoration(
//                                    hintText: "Type Something...",
//                                    border: InputBorder.none),
//                              ),
//                            ),
//                            IconButton(
//                              icon: Icon(Icons.photo_camera),
//                              onPressed: () {},
//                            ),
//                            IconButton(
//                              icon: Icon(Icons.attach_file),
//                              onPressed: () {},
//                            )
//                          ],
//                        ),
//                      ),
//                    ),
//                    SizedBox(width: 15),
//                    Container(
//                      padding: const EdgeInsets.all(15.0),
//                      decoration: BoxDecoration(
//                          color: Colors.green, shape: BoxShape.circle),
//                      child: InkWell(
//                        child: Icon(
//                          Icons.keyboard_voice,
//                          color: Colors.white,
//                        ),
//                        onLongPress: () {
//                          setState(() {
//
//                          });
//                        },
//                      ),
//                    )
//                  ],
//                ),
//              )


            ],
          ),
        ),
      ),
    );
  }
}


/*
* Container(
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(left: 15,right: 15),
                height: 60,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35.0),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 3),
                                blurRadius: 5,
                                color: Colors.grey)
                          ],
                        ),
                        child: Row(
                          children: [
                            IconButton(
                                icon: Icon(Icons.face), onPressed: () {}),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Type Something...",
                                    border: InputBorder.none),
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.photo_camera),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Icons.attach_file),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )*/
