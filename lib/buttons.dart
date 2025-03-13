import 'package:flutter/material.dart';
import 'package:project/company/Employee/LoginPage.dart';
import 'package:project/screens/signin_screen.dart';
class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [

           SizedBox(height: 20), // Space between buttons

           // Employee Button
           ElevatedButton(
             onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage(),));
             },
             style: ElevatedButton.styleFrom(
               foregroundColor: Colors.white, backgroundColor: Colors.green, // Text color
               padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(30),
               ),
               elevation: 5,
             ),
             child: Text(
               'Employee',
               style: TextStyle(fontSize: 20),
             ),
           ),
           SizedBox(height: 20,),
           ElevatedButton(
             onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => Signin(),));
             },
             style: ElevatedButton.styleFrom(
               foregroundColor: Colors.white, backgroundColor: Colors.green, // Text color
               padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(30),
               ),
               elevation: 5,
             ),
             child: Text(
               'Company',
               style: TextStyle(fontSize: 20),
             ),
           ),
         ],
       ),
    );
  }
}
