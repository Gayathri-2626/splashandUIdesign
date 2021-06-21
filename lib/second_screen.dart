import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:splash_activity/otp_screen.dart';

class secondscreen extends StatefulWidget {
  @override
  _secondscreenState createState() => _secondscreenState();
}

class _secondscreenState extends State<secondscreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        padding: EdgeInsets.all(17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Image.asset('images/backarrow.png',height: 60.0,width: 38.0,),
            SizedBox(
              height: 10,
            ),
            Text('Continue With Mobile Number',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
            SizedBox(
              height: 30,
            ),
           Container(
               padding: EdgeInsets.all(10.0),
             child: Row(
               children: [
                 CountryCodePicker(
                   initialSelection: 'IN',
                   showCountryOnly: false,
                   showOnlyCountryWhenClosed: false,
                   favorite: ['+91','IN'],
                   enabled: true,
                   hideMainText: false,
                   showFlagMain: true,
                   showFlag: true,
                   hideSearch: true,
                   showFlagDialog: true,
                 ),
                Container(

                )
               ],
             ),
           ),

            Container(
              padding: EdgeInsets.all(10),
                child: FlatButton(
                    color: Colors.pinkAccent,
                  onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>otpscreen()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Text('Continue with Google',style: TextStyle(color: Colors.white,fontSize: 15),),
                      ),
                    ],
                  ),
                )
            ),
            SizedBox(
              height: 160,
            ),
        Column(
          children: [
            Container(
              color: Colors.black12,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Text('By clicking continue, you agree to our'),
                  Text('Terms of Use')
                ],
              ),
            ),
            Container(
              color: Colors.black12,
              child: Row(
                children: [
                  Text('and acknowledge that you have read our'),
                  Text('Privacy Policy')
                ],
              ),
            )
          ],
        )
        ],
            ),
        ),
    );
   }
}

