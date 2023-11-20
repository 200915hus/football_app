import 'package:flutter/material.dart';
class AboutApp extends StatefulWidget {
  static final String id='About_app';
  const AboutApp({super.key});

  @override
  State<AboutApp> createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Ilova Haqida",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,
      ),

      body:Container(
        padding: EdgeInsets.only(left: 12,bottom: 90),
        color: Colors.blue,
        child:   Center(
        child: Text("Ilova Foutbol muxlislari uchun qilindi. Ma'lumotlar 100% dalillarga asoslangan . Bu dastur Flutter da yozildi. Yaratilgan:24/10/23",style: TextStyle(fontSize: 21,color: Colors.white),),),)
    );
  }
}
