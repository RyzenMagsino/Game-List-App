import 'package:flutter/material.dart';
import 'package:game_list/pages/Addgame.dart';
import 'package:game_list/pages/Listitem.dart';


void main() {
  runApp(MaterialApp(
      routes:{
        '/' : (context) => Listitem(),
        '/add' : (context) => Addgame()
      }
  ));
}

