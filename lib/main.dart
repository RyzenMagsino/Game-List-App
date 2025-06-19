import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Game List',
          style: TextStyle(
            fontSize: 26, // Bigger font size
            fontWeight: FontWeight.bold, // Bold text
            fontFamily: 'Poppins', // Clean, modern font
            letterSpacing: 1.2, // Spacing between letters for a modern touch
            shadows: [
              Shadow(
                blurRadius: 10,
                color: Colors.black.withOpacity(0.5),
                offset: Offset(2, 2),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.transparent, // Make the AppBar background transparent
        elevation: 0, // Remove the default shadow of AppBar
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.lightBlue], // Gradient background
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // First text item in the column
          Text(
            'Welcome to Game List!',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 1.2,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(height: 20), // Space between text items
          Text(
            'Choose your favorite game',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Colors.blueGrey,
              letterSpacing: 1.0,
              fontFamily: 'Roboto',
            ),
          ),
          SizedBox(height: 30), // Space before the next text
          Text(
            'Stay tuned for upcoming features!',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: Colors.grey[600],
              letterSpacing: 1.0,
              fontFamily: 'Arial',
            ),
          ),
        ],
      ),
    ),
  ));
}
