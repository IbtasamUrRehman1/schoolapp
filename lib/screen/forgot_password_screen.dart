import 'package:echain_campus/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:echain_campus/widget/textfield.dart';


class ForgetPasswordScreen extends StatefulWidget {
  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffF4F6F5),
        body: Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: new Image.asset('assets/echain.png'),
                    ),
                    Text(
                      'echaincampus.io',
                      style: GoogleFonts.quicksand(
                        fontSize: 22,
                        fontWeight: FontWeight.w200,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),

              Text(
                'Reset Password',
                style: GoogleFonts.varelaRound(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20,),
              EntryTextField("E-Mail","E-Mail address"),

              TextButton(
                onPressed: (){
                },
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  height: 50,
                  width: MediaQuery.of(context).size.width - 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff616F80),
                  ),
                  child: Center(
                    child: Text(
                      "Send Password Reset Link",
                      style: GoogleFonts.varelaRound(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text(
                  'Login Account',
                  style: GoogleFonts.quicksand(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w200,
                    color: Colors.black,
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
