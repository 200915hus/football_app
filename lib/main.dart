import 'package:flutter/material.dart';
import 'package:football_app/Bale.dart';
import 'package:football_app/Benzema.dart';
import 'package:football_app/Kevin%20De%20Bryune.dart';
import 'package:football_app/Kylian%20Mbappe.dart';
import 'package:football_app/Messi.dart';
import 'package:football_app/Mohamed%20Salah.dart';
import 'package:football_app/Neymar%20Jr.dart';
import 'package:football_app/Robert%20Lewandowski.dart';
import 'package:football_app/Ronaldo.dart';
import 'package:football_app/Sadio%20Mane.dart';
import 'package:football_app/Virgil%20Van%20Dijk.dart';
import 'package:football_app/about_me.dart';
import 'package:football_app/anons.dart';
import 'package:football_app/home_page.dart';

import 'splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        SplashPage.id: (context) => SplashPage(),
        HomePage.id: (context) => HomePage(),
        Messi.id: (context) => Messi(),
        Ronaldo.id:(context)=>Ronaldo(input: ''),
        Benzema.id: (context) => Benzema(),
        Mbappe.id:(context)=>Mbappe(),
        Kevin.id: (context) => Kevin(),
        Sadio.id: (context) => Sadio(),
        Virgil.id: (context) => Virgil(),
        Robert.id: (context) => Robert(),
        Neymar.id: (context) => Neymar(),
        Mohamed.id: (context) => Mohamed(),
        Bale.id:(context)=>Bale(),
        AboutMe.id:(context)=>AboutMe(),
        AddPage.id:(context)=>AddPage(),
      },


    );
  }
}

