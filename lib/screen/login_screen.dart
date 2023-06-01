import 'package:echain_campus/screen/forgot_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:echain_campus/screen/dashboard.dart';
import 'package:echain_campus/widget/textfield.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffF4F6F5),
        body: SingleChildScrollView(
          child: Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: new EdgeInsets.only(left:25.0,top: 25,right: 25),
                  child: Container(
                    height: 170,
                    width: 170,
                    child: new Image.asset('assets/echain.png'),
                  ),
                ),
                Text(
                  'Student Login',
                  style: GoogleFonts.quicksand(
                    fontSize: 26.0,
                    fontWeight: FontWeight.w200,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20,),
                EntryTextField("User Name",""),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Password",
                        style: GoogleFonts.quicksand(fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        child:TextField(
                          keyboardType: TextInputType.text,
                          obscureText: _isHidden,
                          decoration: new InputDecoration(
                            suffix: InkWell(
                              onTap: _togglePasswordView,
                              child: Icon(
                                _isHidden
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffE7E8E8)),
                            ),
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(10),
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPasswordScreen()));
                  },
                  child: Text(
                    'Forgot Password ?',
                    style: GoogleFonts.quicksand(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w200,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                //  SizedBox(height: 30,),
                TextButton(
//                  onPressed: (){
//                    Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()));
//
//                  },
                  onPressed: (){
                    showDialog(
                        context: context,
                        builder: (BuildContext context){
//                          return Dialog(
//                              shape: RoundedRectangleBorder(
//                                  borderRadius: BorderRadius.circular(4.0)
//                              ),
//                              child: Stack(
//                                overflow: Overflow.visible,
//                                alignment: Alignment.topCenter,
//                                children: [
//                                  Container(
//                                    height: 220,
//                                    child: Padding(
//                                      padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
//                                      child: Column(
//                                        children: [
//                                          Text('Save Account', style: GoogleFonts.quicksand(fontSize: 20,fontWeight: FontWeight.bold),),
//                                          SizedBox(height: 5,),
//                                          Text('Do you want to save account ?', style: GoogleFonts.quicksand(fontSize: 17),),
//                                          SizedBox(height: 20,),
//                                          Container(
//                                            child: Row(
//                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                              children: [
//                                                RaisedButton(onPressed: () {
//                                                  Navigator.of(context).pop();
//                                                },
//                                                  color: Colors.red,
//                                                  child: Text('Close', style: TextStyle(color: Colors.white),),
//                                                ),
//                                                RaisedButton(onPressed: () {
//                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()));
//                                                },
//                                                  color: Color(0xff57AACB),
//                                                  child: Text('Okay', style: TextStyle(color: Colors.white),),
//                                                )
//                                              ],
//                                            ),
//                                          ),
//                                        ],
//                                      ),
//                                    ),
//                                  ),
//                                  Positioned(
//                                      top: -60,
//                                      child: CircleAvatar(
//                                        backgroundColor: Color(0xff57AACB),
//                                        radius: 60,
//                                        child: Icon(FontAwesomeIcons.checkCircle, color: Colors.white, size: 50,),
//                                      )
//                                  ),
//                                ],
//                              )
//                          );
                        }
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    height: 50,
                    width: MediaQuery.of(context).size.width - 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff57AACB),
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

}




