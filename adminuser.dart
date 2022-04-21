import 'package:flutter/material.dart';
import 'package:rgit/screens/mainadmin.dart';

import 'loginpage.dart';
class adminuser extends StatefulWidget {
  const adminuser({Key? key}) : super(key: key);

  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<adminuser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [

           Text("Pease select your desired role",style: TextStyle(
               fontSize: 20.0,fontWeight: FontWeight.bold),),
           SizedBox(height: 30.0,),
           TextButton(onPressed: (){
             // Navigator.push(
             //     context,MaterialPageRoute(builder: (context)=>loginpage()));
           }, style:TextButton.styleFrom(
               backgroundColor: Colors.tealAccent

           ),child: Text("USER",style: TextStyle(
               fontSize: 40.0,fontWeight: FontWeight.bold,color: Colors.black),)),
           SizedBox(height: 40.0,),
           TextButton(onPressed: (){
             Navigator.push(
                 context,MaterialPageRoute(builder: (context)=>mainadmin()));
           }, style:TextButton.styleFrom(
               backgroundColor: Colors.tealAccent

           ),child: Text("ADMIN",style: TextStyle(
               fontSize: 40.0,fontWeight: FontWeight.bold,color: Colors.black),))
         ],

        ),
      ),
    );
  }
}
