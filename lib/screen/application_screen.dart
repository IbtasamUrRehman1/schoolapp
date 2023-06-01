import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:echain_campus/widget/search_textfield.dart';
import 'package:echain_campus/widget/header.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class ApplicationScreen extends StatefulWidget {
  @override
  ApplicationScreenState createState() => ApplicationScreenState();
}

/// State for MyApp
class ApplicationScreenState extends State<ApplicationScreen> {
  String _range = '';
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is PickerDateRange) {
        _range =
            DateFormat('dd/MM/yyyy').format(args.value.startDate).toString() +
                ' - ' +
                DateFormat('dd/MM/yyyy')
                    .format(args.value.endDate ?? args.value.startDate)
                    .toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
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
                    "Application for leave",
                    style: GoogleFonts.quicksand(
                      color: Color(0xffB9B9B9),
                      fontSize: 22,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "Please select days for leave",
                      style: GoogleFonts.varelaRound(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff7e7f80),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: SfDateRangePicker(
                    backgroundColor: Color(0xffD4D4D4),
                    endRangeSelectionColor: Color(0xff4B9FC2),
                    rangeSelectionColor: Color(0xff86a4b0),
                    selectionColor: Color(0xff4B9FC2),
                    startRangeSelectionColor: Color(0xff4B9FC2),
                    onSelectionChanged: _onSelectionChanged,
                    selectionMode: DateRangePickerSelectionMode.range,
                    initialSelectedRange: PickerDateRange(
                        DateTime.now().subtract(const Duration(days: 4)),
                        DateTime.now().add(const Duration(days: 3))),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) => Container(
                        height: MediaQuery.of(context).size.height * 0.85,
                        decoration: new BoxDecoration(
                          color: Color(0xffF4F6F5),
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(25.0),
                            topRight: const Radius.circular(25.0),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              decoration: new BoxDecoration(
                                color: Colors.white,
                                borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(25.0),
                                  topRight: const Radius.circular(25.0),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(backgroundColor: Colors.white,),
                                  Text(
                                    "Decision",
                                    style: GoogleFonts.varela(
                                      fontSize: 22,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xffEEEEEF),
                                      radius: 30,
                                      child: TextButton(
                                        onPressed: (){
                                          Navigator.pop(context);
                                        },
                                        child: Icon(
                                          Icons.close,
                                          size: 20,
                                          color: Color(0xff848488),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                "Application decision pending",
                                style: GoogleFonts.varela(
                                  fontSize: 18,
                                  color: Color(0xff8B8B8B),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10,),
                              width: MediaQuery.of(context).size.width,
                              color:Color(0xfff2f2f2),
                              height: 300,
                              child: Image(
                                image: AssetImage("assets/logo.PNG"),
                              ),
                            ),
                            SizedBox(height: 100,),
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Color(0xff57AACB),
                              margin: const EdgeInsets.all(10.0),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(16.0, 20, 16.0, 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Widthdrawl application",
                                      style: GoogleFonts.raleway(
                                        fontSize: 22,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Color(0xff57AACB),
                    margin: const EdgeInsets.all(10.0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(16.0, 20, 16.0, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(_range, style: GoogleFonts.quicksand(fontSize: 17,color: Colors.white),),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => ViewAllApplication()));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Color(0xff57AACB),
                    margin: const EdgeInsets.all(10.0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(16.0, 20, 16.0, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("View All Applications", style: GoogleFonts.quicksand(fontSize: 17,color: Colors.white),),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
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
}



class ViewAllApplication extends StatefulWidget {
  @override
  _ViewAllApplicationState createState() => _ViewAllApplicationState();
}

class _ViewAllApplicationState extends State<ViewAllApplication> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                  "All leave Application",
                  style: GoogleFonts.quicksand(
                    color: Color(0xffB9B9B9),
                    fontSize: 22,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ApplicationReuseCard("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.","Approved","10/02/2021"),
              ),
            ],
          ),
        ),

      ),
    );
  }
}






class ApplicationReuseCard extends StatelessWidget {
  ApplicationReuseCard(this.remarks,this.status,this.date);

  final String date;
  final String remarks;
  final String status;
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
                date,
                style: GoogleFonts.varelaRound(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff5C636D),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5,),
                    Text(
                      "Teacher Remarks",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      remarks,
                      style: TextStyle(
                        color: Color(0xffB9B9B9),
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "Application Status",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      status,
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
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