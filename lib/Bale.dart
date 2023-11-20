

import 'package:flutter/material.dart';
import 'package:football_app/service/item.dart';


class Bale extends StatefulWidget {
  static final id='Bale';
  const Bale({super.key});

  @override
  State<Bale> createState() => _BaleState();
}

class _BaleState extends State<Bale> {
    Service sentence=Service();
    int index = 11;

    @override
    Widget build(BuildContext context) {
     return Scaffold(
       body: CustomScrollView(
         slivers: [
           SliverAppBar(
             leading: IconButton(
               onPressed: (){
                 Navigator.pop(context);
               },
               icon: Icon(Icons.arrow_back),color: Colors.white,
             ),
             expandedHeight: 240,
             floating: true,
             pinned: true,
             snap: true,
             elevation: 50,
             backgroundColor: Colors.blue,
             flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "Gareth Bale ",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 26),
              ),
              background: Image.asset(
                "assets/Bale.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Ism:",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "Gareth Bale",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Haqida:",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      sentence.getLongSentence(index).sentence,
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 400,
                      child: PageView(
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/Bale1.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            child: Image.asset(
                              "assets/Bale2.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            child: Image.asset(
                              "assets/Bale3.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
