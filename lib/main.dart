import 'package:flutter/material.dart';
import 'package:game_list/pages/Addgame.dart';
import 'package:game_list/pages/Dashboard.dart';


void main() {
  runApp(MaterialApp(
      routes:{
        '/' : (context) => Dashboard(),
        '/add' : (context) => Addgame()
      }
  ));
}

