import 'package:flutter/material.dart';
import 'package:game_list/pages/Addgame.dart';
import 'package:game_list/pages/Listitem.dart';

//worldtime
import 'package:game_list/pages/home.dart';
import 'package:game_list/pages/loading.dart';
import 'package:game_list/pages/choose_location.dart';


void main() {
  runApp(MaterialApp(
      initialRoute: '/',
      routes:{
        '/a' : (context) => Listitem(),
        '/add' : (context) => Addgame(),

        //worldtime
        '/': (context) => const Loading(),
        '/home': (context) => const Home(),
        '/location': (context) => const ChooseLocation(),
      }
  ));
}

