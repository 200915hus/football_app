import 'package:flutter/material.dart';
import 'package:football_app/service/item.dart';

class Robert extends StatefulWidget {
  static final String id = 'Robert Lewandowski';

  const Robert({super.key});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<Robert> {
  Service sentence = Service();
  int index = 7;

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
                "Robert Lewandowski",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),
              ),
              background: Image.asset(
                "assets/Robert Lewandowski.jpg",
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
                          "Robert ",
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
                            color: Colors.blue,
                            child: Image.asset(
                              "assets/Robert1.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            color: Colors.green,
                            child: Image.asset(
                              "assets/Robert2.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            color: Colors.orange,
                            child: Image.asset(
                              "assets/Robert3.jpg",
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