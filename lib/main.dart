import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold (
        appBar: AppBar(
          title: Text ('Game List App' , style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.blue[50],
              shadows: [
                Shadow(
                    blurRadius:10.0,
                    color: Colors.black,
                    offset: Offset(2.0,2.0) ),
              ]
          ),),
          backgroundColor: Colors.blue[100],
        ),
        body: Column(
          children: [
            Container( color: Colors.black12, margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name:', style: TextStyle(
                      color: Colors.black,
                      fontSize: 20),
                  ),

              Container(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20,),
                child:
                  Text('Karl Ryzen E. Magsino', style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 20,
                  ),
                  ),
              ),
                ],
              ),
            ),
            Container(color: Colors.black12, margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Age:', style: TextStyle(
                      color: Colors.black,
                      fontSize: 20),
                  ),

                  Container(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20,),
                  child: Text('21 years old',
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 20,
                    ),
                  ),
            ),
    ],
  ),
            ),
            Container(color: Colors.black12, margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Gender:', style: TextStyle(
                      color: Colors.black,
                      fontSize: 20),
                  ),

              Container(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20,),
                child:
                  Text('Male', style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 20,),
                  ),),],),
            ),



          ],
        ),
      )));
}