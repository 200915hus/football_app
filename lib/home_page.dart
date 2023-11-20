import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:football_app/About_app.dart';
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

class HomePage extends StatefulWidget {
  static final String id='home_page';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _androidDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Chiqish"),
            content: Text("Ilovadan chiqmoqchimisiz?"),
            actions: [
              TextButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Bekor qilish',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.red),
                ),
                onPressed: () {
                  SystemNavigator.pop();
                },
                child: Text(
                  'Chiqish',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          );
        });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
                size: 34, // Changing Drawer Icon Size
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Container(
          padding: EdgeInsets.only(right: 23),
          child: Center(child: Text('Top Futbolchilar',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 29),),),),

        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder:  (BuildContext context){
                return AboutMe();
              })
              );
              },
            icon: Icon(Icons.account_box_outlined,color: Colors.white,),
          ),
        ],

      ),


      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 180,
              child: UserAccountsDrawerHeader(
                accountName: Text(
                  "Muhim Qism",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24,color: Colors.white),
                ),
                accountEmail: Text(
                  "Siz uchun!",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/ball.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                "Bosh Sahifa",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
              Navigator.pushReplacementNamed(context, HomePage.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.computer_outlined,size: 30,),
              title: Text("Dasturchi",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return AboutMe();
                  }),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.adb_rounded,size: 27,),
              title: Text("Ilova haqida",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>AboutApp()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.people,size: 27,),
              title: Text("Biz haqimizda",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>AddPage()),
                );
              },
            ),


            Divider(),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Chiqish",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
              onTap: () {
                _androidDialog();
              },
            ),

          ],
        ),
      ),
      body: ListView(
        children: [
       _itemList(
         image: "assets/Ronaldo.jpg",
         name: "Ronaldo",
         year: "1985-yil",
         page: Ronaldo.id
       ),

        _itemList(
            image: "assets/Messi.jpg",
            name: "Leo Messi",
            year: "1987-yil",
            page: Messi.id
        ),
    _itemList(
         image: "assets/Kylian Mbappe.jpg",
         name: "Kylian Mbappe",
         year: "1998-yil",
         page: Mbappe.id
    ),
        _itemList(
            image: "assets/Neymar Jr.jpg",
            name: "Neymar Jr",
            year: "1992-yil",
            page: Neymar.id
        ),
        _itemList(
            image: "assets/Mohamad Salah.jpg",
            name: "Mohamed Salah",
            year: "1992-yil",
            page: Mohamed.id
        ),

        _itemList(
            image: "assets/Robert Lewandowski.jpg",
            name: "R. Lewandowski",
            year: "1988-yil",
            page: Robert.id
        ),
        _itemList(
            image: "assets/Sadio Mane.jpg",
            name: "Sadio Mane",
            year: "1992-yil",
            page: Sadio.id
        ),
        _itemList(
            image: "assets/Benzema.jpg",
            name: "Benzema",
            year: "1987-yil",
            page: Benzema.id
        ),

        _itemList(
            image: "assets/Virgil Van Dijk.jpg",
            name: "Virgil Van Dijk",
            year: "1991-yil",
            page: Virgil.id
        ),

        _itemList(
            image: "assets/Kevin De Bryune.jpg",
            name: "Kevin De Bryune",
            year: "1987-yil",
            page: Kevin.id
        ),
          _itemList(
            image: "assets/Bale.jpg",
            name: "Gareth Bale",
            year: "1989-yil",
            page: Bale.id,
          ),




       ],    ),
    );
  }

  Widget _itemList({image,name,year,page}){
    return InkWell(
      onTap:(){
        Navigator.pushNamed(context, page);
      },
      child :Card(
        margin: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 110,
              width: 110,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(width: 3,color: Colors.green),
                borderRadius: BorderRadius.circular(60),
                image: DecorationImage(
                    image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  year,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),

          ],
        ),
      )

    );
  }
}
