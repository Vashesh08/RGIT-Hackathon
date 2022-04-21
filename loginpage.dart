import 'package:flutter/material.dart';
import 'package:rgit/screens/adminuser.dart';
class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ENTER YOUR EMAIL",style: TextStyle(
              fontSize: 20.0,fontWeight: FontWeight.bold
            ),),
            TextField(),
            SizedBox(height: 10.0,),
            Text("ENTER YOUR PASSWORD",style: TextStyle(
                fontSize: 20.0,fontWeight: FontWeight.bold),),
            TextField(),
            SizedBox(height: 10.0,),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, '/adminuser');
            }, style:TextButton.styleFrom(
              backgroundColor: Colors.white

            ),child: Text("LOGIN",style: TextStyle(
                fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black),))
          ],

        ),
      ),
    );
  }
}
