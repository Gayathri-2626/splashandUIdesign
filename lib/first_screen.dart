import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:splash_activity/second_screen.dart';

class FirstScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding:EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 70,
          ),
          Center(
            child: Image.asset('images/appstore.png', height: 80.0,),
      ),
      SizedBox(
        height: 12.0,
      ),

      Container(

    child: Text('Sign up for Testing',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
    ),
          SizedBox(
            height: 13,
          ),
          Center(
           child: Text('Creaye a profile to find your friends, share your own content and discover other possibilities',textAlign: TextAlign.center,),
          ),

    SizedBox(
      height: 25,
    ),
    Container(
    child: FlatButton(
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>secondscreen()),
        );
      },
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
     Image.asset('images/user.png', height: 30.0),
    Spacer(),
    Text('Enter Phone'),
    Spacer(),
        ],
      ),

    )
    ),

          Container(
              child: FlatButton(
                onPressed: (){},
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('images/fb.png', height: 30.0),
                    Spacer(),
                    Text('Continue with facebook'),
                    Spacer(),
                  ],
                ),

              )
          ),

          Container(
              child: FlatButton(
                onPressed: (){},
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('images/google.png', height: 30.0),
                    Spacer(),
                    Text('Continue with Google'),
                    Spacer(),
                  ],
                ),

              )
          ),
          SizedBox(
            height: 80,
          ),

          Container(
            width: MediaQuery.of(context).size.width*0.90),
                Column(
                children: [
                  Text('By registering, you accept terms of the'),
                        ],
                        ),
                         Container(
                           child: Center(
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Text('User Agreement',style: TextStyle(color: Colors.pink)),
                                   Text(' and '),
                                   Text('Privacy Policy',style: TextStyle(color: Colors.pink),),
                                 ],
                               )
                           )

                         ),
          SizedBox(
            height: 30,
          ),

          Container(
            color: Colors.black12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Already have an account?',),
                    Text('Sign in',style: TextStyle(color: Colors.pink),),
                  ],
                )
            )

    ],
    ),
    ),
    );
  }
}
