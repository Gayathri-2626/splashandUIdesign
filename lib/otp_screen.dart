import 'package:flutter/material.dart';

class otpscreen extends StatefulWidget {
  @override
  _otpscreenState createState() => _otpscreenState();
}

class _otpscreenState extends State<otpscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Image.asset('images/backarrow.png',height: 60.0,width: 38.0,),
            Text('Verify Code',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),

            SizedBox(
              height: 40,
            ),
            Text('A code has been sent to your mobile number',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19)),

            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Enter the code below to verify')
              ],
            ),

          ],
        ),
      ),
    );  }
}
