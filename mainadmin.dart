import 'package:flutter/material.dart';

import 'loginpage.dart';
class mainadmin extends StatefulWidget {
  const mainadmin({Key? key}) : super(key: key);

  @override
  _mainadminState createState() => _mainadminState();
}

class _mainadminState extends State<mainadmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
                // Navigator.push(
                //     context,MaterialPageRoute(builder: (context)=>loginpage()));
              }, style:TextButton.styleFrom(
                  backgroundColor: Colors.tealAccent

              ),child: Text("Create new user",style: TextStyle(
                  fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black),)),
              SizedBox(height: 10.0,),
              TextButton(onPressed: (){
                // Navigator.push(
                //     context,MaterialPageRoute(builder: (context)=>loginpage()));
              }, style:TextButton.styleFrom(
                  backgroundColor: Colors.tealAccent

              ),child: Text("department 1",style: TextStyle(
                  fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black),)),
              SizedBox(height: 10.0,),
              TextButton(onPressed: (){
                // Navigator.push(
                    // context,MaterialPageRoute(builder: (context)=>'/dept1'()));
              }, style:TextButton.styleFrom(
                  backgroundColor: Colors.tealAccent

              ),child: Text("department 2",style: TextStyle(
                  fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black),)),
              SizedBox(height: 10.0,),
              TextButton(onPressed: (){
                // Navigator.push(
                //     context,MaterialPageRoute(builder: (context)=>loginpage()));
              }, style:TextButton.styleFrom(
                  backgroundColor: Colors.tealAccent

              ),child: Text("department 3",style: TextStyle(
                  fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black),)),

            ],
          ),
        ),
      ),
    );
  }
}
